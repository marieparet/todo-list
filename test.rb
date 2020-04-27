require_relative 'task_manager'
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
        stubs(:gets).returns('Biking')
        tasks = add_task_in([])
        assert tasks.include?('Biking')
    end

    def test_remove_task
        stubs(:gets).returns('0')
        tasks = remove_task_from(['Coucou', 'Titi'])
        assert_equal tasks, ['Titi']
    end
end
