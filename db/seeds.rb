10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "abcdefg abcdefg abcdefg abcdefg"
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_usage: 15
    )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My service",
    body: "abcdefg abcdefg abcdefg abcdefg",
    main_image: "http://placehold.it/350x350",
    thumb_image: "http://placehold.it/150x150",
    )
  end

puts "9 portfolio created"