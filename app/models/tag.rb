class Tag < ApplicationRecord
  # Relations
  has_many :tag_questions
  has_many :questions, through: :tag_questions

  # Call Backs
  before_save :format_tag

  #validations
  validates :name, presence: true
  validates_length_of :name, maximum: 30

  def format_tag
    self.name = self.name.split.map(&:capitalize).join(' ')
  end

  def self.find_matching_tags(tag_term)
    Tag.all.select {|tag| tag.name.downcase.include?(tag_term.downcase)}
  end
end
