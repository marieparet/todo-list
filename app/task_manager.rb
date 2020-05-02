require_relative 'storage_manager'

def list_tasks(tasks)
    puts "Here are your current tasks :"
    p tasks
end

def add_task_in(tasks)
    puts "What is the name of the task you want to add?"
    tasks << STDIN.gets.strip
    puts "Task is created"
    StorageManager.save_tasks(tasks)
end

def remove_task_from(tasks)
    puts "Which task have you done ?"
    p tasks
    input = STDIN.gets.strip.to_i
    tasks.delete_at(input - 1)
    puts "Task has been removed"
    StorageManager.save_tasks(tasks)
end
