# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patient.delete_all
Doctor.delete_all
Request.delete_all

p1 = Patient.create(:username => "chang", :last_name => "Lin", :first_name => "Chang", :email => "hsi.chang@gmail.com", :phone => "555-555-5555", :password => "1", :password_confirmation => "1", :age => 30, :patient => true)

d1 = Doctor.create(:username => "basch", :last_name => "Basch", :first_name => "Steve", :email => "fake@fake.com", :phone => "555-555-5555", :password => "1", :password_confirmation => "1", :patient => false)
d2 = Doctor.create(:username => "larry", :last_name => "Sanders", :first_name => "larry", :email => "fake@fake.com", :phone => "555-555-5555", :password => "1", :password_confirmation => "1", :patient => false)
d3 = Doctor.create(:username => "george", :last_name => "Evergreen", :first_name => "George", :email => "fake@fake.com", :phone => "555-555-5555", :password => "1", :password_confirmation => "1", :patient => false)

r1 = Request.create(:sender_id => 1, :receiver_id => 1, :accepted =>nil)
