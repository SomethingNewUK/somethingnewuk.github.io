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

task :test do
  sh "bundle exec jekyll build"
  ignored = [
    "http://githubeditor.herokuapp.com"
  ]
  HTML::Proofer.new("./_site", typhoeus: {ssl_verifypeer: false, timeout: 30}, url_ignore: ignored, check_html: true).run
end

task :default => :test