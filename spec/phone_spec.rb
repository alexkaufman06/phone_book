require('rspec')
require('phone')

describe(Phone) do
  before() do
    Phone.clear()
  end

  describe('#phone_number') do
    it('returns the phone number') do
      test_number = Phone.new({:phone_number => "911", :phone_number_type => ""})
      expect(test_number.phone_number()).to(eq("911"))
    end
  end

  describe('#phone_number_type') do
    it('returns the phone number type') do
      test_number = Phone.new({:phone_number => "911", :phone_number_type => "Home"})
      expect(test_number.phone_number_type()).to(eq("Home"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the phone number to the array of saved phone numbers') do
      test_number = Phone.new({:phone_number => "411", :phone_number_type => ""})
      test_number.save()
      expect(Phone.all()).to(eq([test_number]))
    end
  end

  describe('.clear') do
    it('empties out all of the save phone numbers') do
      Phone.new({:phone_number => "8675309", :phone_number_type => ""}).save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("returns a phone number by its id number") do
      test_number = Phone.new({:phone_number => "2545609", :phone_number_type => ""})
      test_number.save()
      test_number2 = Phone.new({:phone_number => "1234567", :phone_number_type => ""})
      test_number2.save()
      expect(Phone.find(test_number.id())).to(eq(test_number))
    end
  end
end
