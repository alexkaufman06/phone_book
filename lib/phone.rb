class Phone
  attr_reader(:phone_number)

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
  end

end
