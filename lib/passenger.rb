class Passenger
  attr_reader :name, :age

  def initialize(details)
    @name = details['name']
    @age = details['age']
  end

  def adult?
    if @age >= 18
      true
    elsif @age < 18
      false
    end
  end
end