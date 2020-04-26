require 'json'

FILENAME = 'tasks.json'

def retrieve_tasks
    saved_tasks = File.read(FILENAME)
    json = JSON.parse(saved_tasks)

    json['saved_tasks']
end

def save_tasks(tasks)
    File.write(FILENAME, { saved_tasks: tasks }.to_json)
end
