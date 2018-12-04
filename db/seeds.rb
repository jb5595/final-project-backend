# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# Answer.destroy_all
# AnswerUpvote.destroy_all
# Expert.destroy_all
# WorkExperience.destroy_all
# User.destroy_all
# Question.destroy_all
# Education.destroy_all
# ProfileView.destroy_all
# QuestionUpvote.destroy_all
# Review.destroy_all
# TagQuestion.destroy_all
# Tag.destroy_all
# ExpertTag.destroy_all
# WebsiteClick.destroy_all
# I18n.reload!
Expert.all.each{ |expert|
  Answer.create(expert_id: expert.id, question_id: rand(Question.first.id..Question.last.id), content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum erat sed lorem finibus molestie. Proin consequat, ligula sit amet molestie sagittis, diam nulla consectetur felis, eu egestas quam purus sit amet metus. Nulla mollis mauris urna, eget porta sapien pulvinar a. Cras finibus, elit vitae dapibus sagittis, tellus leo lacinia augue, eu suscipit mauris nunc nec metus. Nunc sollicitudin, tellus facilisis fermentum iaculis, odio odio fermentum magna, in imperdiet nunc dui at dui. Curabitur eu enim sed urna facilisis molestie. Duis ligula sapien, venenatis vitae ex pellentesque, luctus dapibus ligula. Duis at semper turpis, vulputate semper est. Pellentesque et ultricies ipsum. Sed mollis dapibus justo, sed venenatis lacus dignissim vel. Morbi id varius enim." )
 }
# 20.times { |number|
#
# expert = Expert.create(
#   user_name: "testexpert" + number.to_s,
#   full_name: Faker::Name.name,
#   address: Faker::Address.street_address,
#   city: Faker::Address.city,
#   state: Faker::Address.state_abbr,
#   zip_code: Faker::Address.zip_code,
#   website_url: "google.com",
#   about: Faker::Company.catch_phrase,
#   job_title: Faker::Job.title,
#   company: Faker::Company.name,
#   phone: Faker::PhoneNumber.cell_phone,
#   email: Faker::SiliconValley.email,
#   password: "password"
# )
#
# work_experience1 = WorkExperience.new(
#   title: Faker::Job.title,
#   company: Faker::Company.name,
#   location: `#{Faker::Address.city}, #{Faker::Address.state_abbr}` ,
#   start_month: Date::MONTHNAMES[Faker::Date.between(8.years.ago, 4.years.ago).month] ,
#   start_year: Faker::Date.between(8.years.ago,4.years.ago).year,
#   end_month:  Date::MONTHNAMES[Faker::Date.between(4.years.ago, Date.today).month],
#   end_year: Faker::Date.between(4.years.ago, Date.today).year,
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce luctus ex vitae vehicula vehicula. Ut non nisl ligula. Cras et tincidunt magna. Integer sed quam ultrices, dictum purus vitae, vehicula magna. Mauris massa dolor, pulvinar maximus sapien sed, sagittis pretium sapien. Curabitur ullamcorper sem in nibh sollicitudin, cursus tincidunt quam commodo. Praesent tincidunt fringilla magna, at sagittis turpis feugiat eget."
# )
#
# work_experience2 = WorkExperience.new(
#   title: Faker::Job.title,
#   company: Faker::Company.name,
#   location: `#{Faker::Address.city}, #{Faker::Address.state_abbr}` ,
#   start_month: Date::MONTHNAMES[Faker::Date.between(16.years.ago, 12.years.ago).month] ,
#   start_year: Faker::Date.between(16.years.ago,12.years.ago).year,
#   end_month:  Date::MONTHNAMES[Faker::Date.between(12.years.ago,8.years.ago).month],
#   end_year: Faker::Date.between(12.years.ago, 8.years.ago).year,
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce luctus ex vitae vehicula vehicula. Ut non nisl ligula. Cras et tincidunt magna. Integer sed quam ultrices, dictum purus vitae, vehicula magna. Mauris massa dolor, pulvinar maximus sapien sed, sagittis pretium sapien. Curabitur ullamcorper sem in nibh sollicitudin, cursus tincidunt quam commodo. Praesent tincidunt fringilla magna, at sagittis turpis feugiat eget."
# )
# education = Education.new(
#   school: Faker::University.name,
#   degree: Faker::Job.education_level,
#   field_of_study: "Business",
#   start_year: Faker::Date.between(20.years.ago, 16.years.ago).year,
#   end_year: Faker::Date.between(24.years.ago, 20.years.ago).year,
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce luctus ex vitae vehicula vehicula. Ut non nisl ligula. Cras et tincidunt magna. Integer sed quam ultrices, dictum purus vitae, vehicula magna. Mauris massa dolor, pulvinar maximus sapien sed, sagittis pretium sapien. Curabitur ullamcorper sem in nibh sollicitudin, cursus tincidunt quam commodo. Praesent tincidunt fringilla magna, at sagittis turpis feugiat eget."
#
# )
# expert.educations << education
# expert.work_experiences << work_experience1
# expert.work_experiences << work_experience2
# }
# 10.times{ |number|
#
#   location = Faker::Address.city + ", " + Faker::Address.state_abbr
#  User.create(
#   user_name: "test-user" + number.to_s,
#   email: Faker::SiliconValley.email,
#   password: "password",
#   size_range: "< 10",
#   industry: Faker::Job.field,
#   location: location
# )
# }
# rand(User.first.id..User.last.id)
# rand(Question.first.id..User.last.id)
# 30.times {
#   random_expert_id = rand(Expert.first.id..Expert.last.id)
#   random_user_id = rand(User.first.id..User.last.id)
#   Review.create(
#     expert_id: random_expert_id,
#     user_id: random_user_id,
#     title: "Lorem ipsum dolor sit amet, consectetuer adip",
#     details: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu",
#     score: rand(0..5)
#   )
# }
# 50.times {
#   random_expert_id = rand(Expert.first.id..Expert.last.id)
#   30.times{
#       WebsiteClick.create(expert_id: random_expert_id, created_at: Faker::Date.backward(1.month))
#       WebsiteClick.create(expert_id: random_expert_id, created_at: Faker::Date.backward(2.month))
#       WebsiteClick.create(expert_id: random_expert_id, created_at: Date.current )
#       ProfileView.create(expert_id: random_expert_id, created_at: Faker::Date.backward(1.month))
#       ProfileView.create(expert_id: random_expert_id, created_at: Faker::Date.backward(2.month))
#       ProfileView.create(expert_id: random_expert_id, created_at: Date.current )
#
#   }
#
# }
#
# 20.times {Tag.find_or_create_by(name:Faker::Job.field)}
