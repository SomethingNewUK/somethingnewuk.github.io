require 'html-proofer'

namespace :update do
  task :submodules do
    sh "git submodule update --remote"
  end
end

task :rebuild do
  sh "rm -rf _site"
  sh "bundle exec jekyll build"
end

task :htmlproofer => :rebuild do
  ignored = [
    "http://githubeditor.herokuapp.com"
  ]
  HTMLProofer.check_directory("./_site", 
    typhoeus: {ssl_verifypeer: false, timeout: 30}, 
    url_ignore: ignored, 
    check_html: true, 
    assume_extension: ".html").run
end

task :spellcheck do
  sh "mdspell . -c .mdspell"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec => :rebuild)

task :default => [:spec, :htmlproofer]