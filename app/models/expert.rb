class Expert < ApplicationRecord
  # Relations
  has_many :work_experiences
  has_many :educations
  has_many :answers
  has_many :questions, through: :answers
  has_many :expert_tags
  has_many :tags, through: :expert_tags
  has_many :question_upvotes, as: :upvoter
  has_many :answer_upvotes, as: :upvoter
  has_many :reviews
  has_many :profile_views
  has_many :website_clicks

  has_one_attached :profile_picture
  has_one_attached :cover_photo


  # Auth
  has_secure_password

  # Validations
  validates :user_name, presence: true
  validates :user_name, uniqueness: { case_sensitive: false }
  validates :full_name, presence: true
  # Ensures experts and users do not share usernames
  # so they will be able to both login from login button
  validate :no_user_shares_user_name


  def total_upvotes
    self.answers.sum{|answer| answer.upvote_score}
  end

  def analytics

    {profile_views: self.profile_views_analytics, website_clicks: self.website_clicks_analytics}
  end
  def website_clicks_analytics
    total_clicks = self.website_clicks.length
    clicks_this_month = self.website_clicks.select{ |click| click.created_at.month == Date.current.month}.length
    clicks_last_month = self.website_clicks.select{ |click| click.created_at.month == (Date.current.month - 1) }.length

    {total_clicks: total_clicks, clicks_this_month: clicks_this_month, clicks_last_month: clicks_last_month}

  end

  def answers_overview
    total_answers = self.answered_questions.length
    answers_this_month = self.answered_questions.select{ |answer| answer.created_at.month == Date.current.month}.length
    answers_last_month = self.answered_questions.select{ |answer| answer.created_at.month == (Date.current.month - 1) }.length
    {total_answers: total_answers, answers_this_month: answers_this_month, answers_last_month: answers_last_month}

  end

  def profile_views_analytics
    total_views = self.profile_views.length
    views_this_month = self.profile_views.select{ |view| view.created_at.month == Date.current.month}.length
    views_last_month = self.profile_views.select{ |view| view.created_at.month == (Date.current.month - 1) }.length
    {total_views: total_views, views_this_month: views_this_month, views_last_month: views_last_month}
  end

  def no_user_shares_user_name

    if User.all.any?{|user| self.user_name == user.user_name}
      self.errors[:base] << "Username has already been taken"
    end
  end

  def self.search_preview_results(search_term)
    Expert.all.select {|expert| expert.full_name.downcase.include?(search_term.downcase)}.slice(0,3)
  end

  def answered_questions
    self.questions.uniq
  end

  def average_rating
    if self.reviews.length ==0
      return 5
    else
      average = self.reviews.sum{|review| review.score}
      average = (average/self.reviews.length).round
    end
  end
  def questions_that_match_tags
    self.tags.flat_map{|tag| tag.questions.map{|question| question}}
  end

  def top_tags
    tags = self.questions.map{|question| question.tags.map{|tag| tag }}
    freq = tags.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    arr = []
    arr.push(tags.max_by { |v| freq[v] })
    freq[arr[0]] = 0
    arr.push(tags.max_by { |v| freq[v] })
    freq[arr[1]] = 0
    arr.push(tags.max_by { |v| freq[v] })
    arr.flatten.slice(0,3).compact
  end



end
