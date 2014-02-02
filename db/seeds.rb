puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Oliver Thomsett', :email => 'oliver@thecoderfactory.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.name
user.add_role :admin
UserProfile.create!([
  {user_id: 4, twitter: "@thomsett59", linkedin: "http://www.linkedin.com/pub/oliver-thomsett/88/519/947", github: "thecoderfactory", startupcommunity: "", google_plus: "115232249518702657714", bio: "Oliver is a very funny guy. He is inspired by technology and wants more people to learn to code.", title: "Recruitment Director", image: "pete1.png", website: "http://thecoderfactory.com/oliver-thomsett"},
  ])
