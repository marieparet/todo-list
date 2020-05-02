require_relative '../app/task_manager'
require 'minitest/autorun'
require 'minitest/unit'
require 'mocha/minitest'

class TodolistTest < Minitest::Test
    def setup
        stubs(:puts)
        stubs(:p)
    end
    
    def test_list
        expects(:p).with(['coucou'])
        list_tasks(['coucou'])
    end

    def test_add_task
        STDIN.stubs(:gets).returns('Biking')
        tasks = []
        add_task_in(tasks)

        assert tasks.include?('Biking')
    end

    def test_remove_task
        STDIN.stubs(:gets).returns('1')
        tasks = ['Titi', 'Toto']
        remove_task_from(tasks)
        assert_equal tasks, ['Toto']
    end
end
