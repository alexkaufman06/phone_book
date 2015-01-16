require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/contacts') do
  @contacts_name = params.fetch('contact')
  Contact.new({:contact_name => @contacts_name}).save()
  @contacts = Contact.all()
  erb(:index)
end

get('/contacts/:id') do
  @contacts = Contact.find(params.fetch('id').to_i())
  @numbers = Phone.all()
  erb(:contacts)
end

post('/phone_numbers') do
  @phone_number = params.fetch('phone_number')
  @phone_numbers = Phone.new({:phone_number => @phone_number}).save()
  @contacts = Contact.find(params.fetch('contact_id').to_i())
  @contacts.add_number(@phone_number)
  @phone_numbers = Phone.all()
  erb(:contacts)
end
