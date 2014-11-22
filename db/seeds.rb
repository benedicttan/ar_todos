require 'faker'

newlist = List.create(name: "Our one and only to-do list") if !(List.first)

for i in 1..10
	sentence = Faker::Lorem.sentence
	Task.create(description: sentence, list_id: 1, completed: 0)
end
