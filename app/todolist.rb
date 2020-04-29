require_relative 'task_manager'

def ask_user_input
    puts "What do you want to do ?"
    gets.strip
end

tasks = retrieve_tasks

loop do

    input = ask_user_input


    if input == "list"
        list_tasks(tasks)
    elsif input == "add"
        add_task_in(tasks)
    elsif input == "done"
        remove_task_from(tasks)
    elsif input == "exit"
        break
    end
end
