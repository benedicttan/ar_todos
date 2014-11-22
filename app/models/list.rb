require_relative "../../db/config.rb"
require_relative "task.rb"

class List < ActiveRecord::Base
	has_many :tasks

	def self.list_tasks
		Task.all.each do |t|
			puts (t.id.to_s << ". ").ljust(5) << " [" << (
			if t.completed == 1
				"X"
			else
				" "
			end
			) << "] " << t.description
		end
	end

	def self.add_task(sentence)
		Task.create(description: sentence, list_id: 1)
	end

	def self.delete_task(item)
		Task.destroy(item)
	end

	def self.complete_task(item)
		t = Task.find(item)
		t.completed = 1
		t.save
	end

end
