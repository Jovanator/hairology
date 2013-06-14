namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(username: "Lauren Nicole Roth", 
                 email: "laurennicoleroth@gmail.com",
                 password: "spirit2634",
                 password_confirmation: "spirit2634" )
    99.times do |n|
      name = Faker::Name.name
      email = "example=#{n+1}@railstutorial.org"
      password = "password"
      User.create!(username: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    User.all.each { |user| user.avatar = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample) }
  end
end
