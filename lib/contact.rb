class Contact
  attr_reader(:contact_name)

  define_method(:initialize) do |attributes|
    @contact_name = attributes.fetch(:contact_name)
    @contacts_numbers = []
  end

end
