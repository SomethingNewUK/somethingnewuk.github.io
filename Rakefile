require 'html/proofer'

namespace :update do
  task :submodules do
    ["manifesto", "_data/election-data", "_data/finances"].each do |dir|
      Dir.chdir(dir) do
        sh "git pull"
      end
    end
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
  HTML::Proofer.new("./_site", typhoeus: {ssl_verifypeer: false, timeout: 30}, url_ignore: ignored, check_html: true).run
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec => :rebuild)

task :default => [:spec, :htmlproofer]