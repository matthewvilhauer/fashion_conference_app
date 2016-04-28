ruby
require 'ffaker'


p "Hello from seeds.rb"

Speaker.destroy_all

speakers_data = [
    {:first=>"Cory", :last=>"Fauver", :email=>"cory@example.com"},
    {:first=>"Juliana", :last=>"Lopker", :email=>"juliana@example.com"},
    {:first=>"Will", :last=>"Cauthen", :email=>"will@example.com"},
    {:first=>"Nick", :last=>"Brennan", :email=>"nick@example.com"}
]

Speaker.create(speakers_data)

(1000).times do |f|
    newPerson = Speaker.new
    newPerson.first = FFaker::Name.first_name
    newPerson.last = FFaker::Name.last_name
    newPerson.email = FFaker::Internet.email
    newPerson.save
end


p "Created #{Speaker.count} entries"
