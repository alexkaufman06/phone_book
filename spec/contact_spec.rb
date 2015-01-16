require('rspec')
require('contact')
require('phone')

describe(Contact) do

  describe('#contact_name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:contact_name => "Polythene Pam"})
      expect(test_contact.contact_name()).to(eq("Polythene Pam"))
    end
  end

  describe('#id') do
    it('returns the id of the contact') do
      test_contact = Contact.new({:contact_name => "Wendy Wacko"})
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the contacs name ot the array of saved contact names') do
      test_contact = Contact.new({:contact_name => "Steve Sharts"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved contacts') do
      Contact.new({:contact_name => "Ivana Humpalot"})
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a contact by their id number') do
      test_contact = Contact.new({:contact_name => "Harry Beaver"})
      test_contact.save()
      test_contact2 = Contact.new({:contact_name => "Smokey Potter"})
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end

  describe('#add_number') do
    it('adds a new number to the contact class') do
      test_contact = Contact.new({:contact_name => "Pho King"})
      test_number = Phone.new({:phone_number => "0101010"})
      test_contact.add_number(test_number)
      expect(test_contact.contacts_numbers()).to(eq([test_number]))
    end
  end
end
