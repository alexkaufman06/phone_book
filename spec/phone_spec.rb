require('rspec')
require('phone')

describe(Phone) do

  describe('phone_number') do
    it('returns the phone number') do
      test_number = Phone.new({:phone_number => "911"})
      expect(test_number.phone_number()).to(eq("911"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Phone.all()).to(eq([]))
    end
  end

end
