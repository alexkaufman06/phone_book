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

end
