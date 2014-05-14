puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Peter Polacek', :email => 'donpedro@thecoderfactory.com', :password => 'thecoderfactory.com', :password_confirmation => 'thecoderfactory.com'
puts 'New user created: ' << user.name
user.add_role :admin
UserProfile.create!([
  {user_id: 4, twitter: "@DonPedrinho", linkedin: "http://au.linkedin.com/pub/peter-polacek/1/bb1/b52", github: "thecoderfactory", startupcommunity: "", google_plus: "115232249518702657714", bio: "Pedro is passionate about his family, disruptive thinking, startegy, design, meeting new and interesting people, latin culture, learning new things and having fun. His inquiaitive nature and cheekiness makes him the perfect fit @ The Coder Factory.", title: "Operations Director", image: "donpedro.jpg", website: "http://thecoderfactory.com/peter-polacek"},
  ])
puts 'SETTING UP DEFAULT USER LOGIN'
user2 = User.create! :name => 'Florian Fischer', :email => 'florian@thecoderfactory.com', :password => 'thecoderfactory.com', :password_confirmation => 'thecoderfactory.com'
puts 'New user created: ' << user2.name
user2.add_role :admin
UserProfile.create!([
  {user_id: 4, twitter: "@thomsett59", linkedin: "http://au.linkedin.com/pub/florian-fischer/85/714/a1a", github: "thecoderfactory", startupcommunity: "", google_plus: "115232249518702657714", bio: "Oliver is a very funny guy. He is inspired by technology and wants more people to learn to code.", title: "Recruitment Director", image: "florian.jpg", website: "http://thecoderfactory.com/florian-fischer"},
  ])