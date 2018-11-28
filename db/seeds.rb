# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expert.destroy_all
WorkExperience.destroy_all
User.destroy_all
Question.destroy_all
Education.destroy_all
Answer.destroy_all

expert = Expert.create(
  full_name: "John Smith",
  address: "1234 Oxford Dr.",
  city: "Washingotn",
  state: "DC",
  zip_code: "22203",
  website_url: "website.com",
  about: "law Expert with 25 years experience in deal structuring",
  job_title: "Partner",
  company: "Lawyer Lawyer & Lawyer",
  phone: "555-555-5555",
  email: "lawyer@email.com",
  password: "password"
)
work_experience1 = WorkExperience.new(
  title: "Attorney",
  company: "Mcdonald Hopkins",
  location: "Washington, DC" ,
  start_month: "January" ,
  start_year: "2012",
  end_month: "March",
  end_year: "2018",
  description: "I was the go to attorney for all things funding related"
)

work_experience2 = WorkExperience.new(
  title: "Partner",
  company: "Lawyer Lawyer & Lawyer",
  location: "Washington, DC" ,
  start_month: "March" ,
  start_year: "2018",
  description: "Big Partner in charge"
)
education = Education.new(
  school: "University of Maryland, College Park",
  degree: "Bachelors of Science",
  field_of_study: "Pre-Law",
  start_year: "1980",
  end_year: "1984"
)
user = User.create(
  user_name: "User1234",
  email:"user@email.com",
  revenue_range: "< $100K/yr",
  size_range: "< 10",
  location: "Washington DC",
  password: "password"

)
question1 = Question.new(
  question: "is this a question?",
  question_details: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)
question2 = Question.new(
  question: "What do I need to expand my busienss to overseas markets",
  question_details: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)
answer1 = Answer.create(
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  question_id: question1.id,
  expert_id: expert.id
)
answer2 = Answer.create(
  content: "consec tetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  question_id: question1.id,
  expert_id: expert.id

)
answer3 = Answer.create(
  content: "llit anim id est laborum.",
  question_id: question2.id,
  expert_id: expert.id
)

user.questions << question1
user.questions << question2
expert.work_experiences << work_experience1
expert.work_experiences << work_experience2
expert.educations << education
