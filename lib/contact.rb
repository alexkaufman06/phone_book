class Contact
  attr_reader(:contact_name, :id)
  @@contacts = []

  define_method(:initialize) do |attributes|
    @contact_name = attributes.fetch(:contact_name)
    @contacts_numbers = []
    @id = @@contacts.length().+(1)
  end

end
