class Phone
  attr_reader(:phone_number)
  @@phone_numbers = []

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

end
