require 'rake/testtask'
require_relative 'app/todolist'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/**.rb']
end

desc 'Run tests'
task default: :test

desc 'Start'
task :start do
    start_todolist
end
