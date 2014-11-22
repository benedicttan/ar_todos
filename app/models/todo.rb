require_relative "list"

args = ARGV

case args[0]
when "list"
	List.list_tasks
when "add"
	args.shift
	List.add_task(args.join(" "))
	List.list_tasks
when "delete"
	List.delete_task(args[1])
	List.list_tasks
when "complete"
	List.complete_task(args[1].to_i)
	List.list_tasks
else
	puts "Don't recognize the command, mate!"
end


