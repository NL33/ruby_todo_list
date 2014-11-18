
class List

  def initialize(description)
    @tasks = []
    @description = description
  end
  
	def add_task(task)
     @tasks << task 
	end

  def list_tasks
    puts "#{@description} includes #{@tasks}"
  end
end

#examples:
home = List.new("home")

home.add_task("cooking")

home.add_task("vacuum")

home.list_tasks

exercise = List.new("exercise")

exercise.add_task("run")

exercise.add_task("pushups")

exercise.list_tasks




