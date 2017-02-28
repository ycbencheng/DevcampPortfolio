3.times do |topic|
  Topic.create!(
    title:"Topic #{topic}"
  )
end

puts "3 topics created"

6.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "abcdefg abcdefg abcdefg abcdefg",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

2.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_usage: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "abcdefg abcdefg abcdefg abcdefg",
    main_image: "http://placehold.it/350x350",
    thumb_image: "http://placehold.it/150x150",
    )
  end

puts "9 portfolio created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "abcdefg abcdefg abcdefg abcdefg",
    main_image: "http://placehold.it/350x350",
    thumb_image: "http://placehold.it/150x150",
    )
  end