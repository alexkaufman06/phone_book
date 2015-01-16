class Contact
  attr_reader(:contact_name, :id, :contacts_numbers)
  @@contacts = []

  define_method(:initialize) do |attributes|
    @contact_name = attributes.fetch(:contact_name)
    @contacts_numbers = []
    @id = @@contacts.length().+(1)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |identification|
    @@contacts.each() do |contact|
      if contact.id().eql?(identification)
        return contact
      end
    end
  end

  define_method(:add_number) do |number|
    @contacts_numbers.push(number)
  end
end
