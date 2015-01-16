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



end
