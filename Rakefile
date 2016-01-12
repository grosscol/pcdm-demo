require 'pry'
# Load all the rake tasks from all the gems
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

# Load jettywrapper
spec = Gem::Specification.find_by_name 'jettywrapper'
Dir.glob("#{spec.gem_dir}/tasks/*").each{|t| load t }
Dir.glob('tasks/*.rake').each { |r| import r }

task default: :def

task :def do
  puts "default task"
end
