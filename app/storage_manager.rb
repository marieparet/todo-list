require 'json'

FILEPATH = 'db/tasks.json'

def retrieve_tasks
    saved_tasks = File.read(FILEPATH)
    json = JSON.parse(saved_tasks)

    json['saved_tasks']
end

def save_tasks(tasks)
    File.write(FILEPATH, { saved_tasks: tasks }.to_json)
    tasks
end

