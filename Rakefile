require 'jekyll/test/tasks'

namespace :update do
  task :submodules do
    sh "git submodule update --remote"
  end
end

task :spellcheck do
  sh "mdspell . -c .mdspell"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec => "jekyll:rebuild")

task :default => [:spec, 'jekyll:check']