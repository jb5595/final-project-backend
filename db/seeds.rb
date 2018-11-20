# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expert.destroy_all

expert = Expert.create(
  full_name: "John Smith",
  address: "1234 Oxford Dr.",
  city: "Washingotn",
  state: "DC",
  zip_code: "22203",
  website_url: "website",
  about: "law Expert with 25 years experience in deal structuring",
  job_title: "Partner",
  company: "Lawyer Lawyer & Lawyer",
  phone: "555-555-5555",
  email: "lawyer@email.com"
)
