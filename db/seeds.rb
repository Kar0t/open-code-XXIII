# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[:user, :moderator, :admin].each do |role|
  Role.find_or_create_by({ name: role })
end

unless User.find_by({email: 'admin@test.com'})
  admin = User.new({ email: 'admin@test.com', password: 'qwerty123' })
  admin.add_role :admin
  admin.save
end

unless User.find_by({email: 'moderator@test.com'})
  moderator = User.new({ email: 'moderator@test.com', password: 'qwerty123' })
  moderator.add_role :moderator
  moderator.save
end

unless User.find_by({email: 'user1@test.com'})
  user = User.new({ email: 'user1@test.com', password: 'qwerty123' })
  user.add_role :user
  user.save
end

unless User.find_by({email: 'user2@test.com'})
  user = User.new({ email: 'user2@test.com', password: 'qwerty123' })
  user.add_role :user
  user.save
end
