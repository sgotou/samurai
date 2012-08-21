require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :article => :environment do
    Rake::Task['db:reset'].invoke
    Article.create!(:body => "body",
                 :title => "title")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      Article.create!(:body => email,
                   :title => password)
    end
  end
end
