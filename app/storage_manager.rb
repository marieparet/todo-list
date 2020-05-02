require 'json'

class StorageManager
    FILEPATH = 'db/tasks.json'

    def self.retrieve_tasks
        saved_tasks = File.read(FILEPATH)
        json = JSON.parse(saved_tasks)

        json['saved_tasks']
    end

    def self.save_tasks(tasks)
        File.write(FILEPATH, { saved_tasks: tasks }.to_json)
    end
end

