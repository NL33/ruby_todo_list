require './lib/task'
require './lib/list'

@list = []

def main_menu
  loop do
    puts "Press 'a' to add a task, 'l' to list all of your tasks, or 'r' to remove a task."
    puts "Press 'x' to exit."
    main_choice = gets.chomp             #gets is how we get what the user has entered. Chomp is used because the gets command in the command line end a line with /n. .chomp gets rid of that 
    if main_choice == 'a'
      add_task
    elsif main_choice == 'l'
      list_tasks
    elsif main_choice == 'r'
      delete_tasks
    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end

def add_task
  puts "Enter a description of the new task:"
  user_description = gets.chomp
  @list << Task.new(user_description)
  puts "Task added.\n\n"
end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each do |task|
    puts task.description
  end
  puts "\n"

def delete_tasks
  puts "Select the task you wish to remove, by entering the number of that task"
  delete_description = gets.chomp
  integer_description = delete_description.to_i
  @list.pop(integer_description - 1)
  puts "Here are all of your tasks after that removal:"
  @list.each do |task|
    puts task.description
end

end

main_menu