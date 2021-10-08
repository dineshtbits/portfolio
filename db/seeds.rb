# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog_id|
  Blog.create!(
    title: "My Blog Post #{blog_id}",
    body: "Body here"
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilied: 65
  )
end

9.times do |p|
  PortfolioDatum.create!(
    title: "Portfolio Title #{p}",
    subtitle: "body",
    body: "body",
    main_image: "test",
    thumb_image: "thumb image"
  )
end