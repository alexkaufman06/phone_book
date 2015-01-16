class Phone
  attr_reader(:phone_number, :phone_number_type, :id)
  @@phone_numbers = []

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
    @phone_number_type = attributes.fetch(:phone_number_type)
    @id = @@phone_numbers.length().+(1)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@phone_numbers = []
  end

  define_singleton_method(:find) do |identification|
    @@phone_numbers.each() do |number|
      if number.id().eql?(identification)
        return number
      end
    end
  end

end
