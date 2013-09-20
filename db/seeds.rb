require 'faker'

10.times do |post|
	Post.create(
		:author  => Faker::Name.last_name,
		:title   => Faker::Company.catch_phrase,
		:body    => Faker::Lorem.paragraphs(rand(3..8)).join('\n')  
     Tag.create(
     		  :tag     => Faker::Lorem.words(1)
     	)
end
