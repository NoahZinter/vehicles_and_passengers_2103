class Passenger
  attr_reader :name, :age, :driver

  def initialize(details)
    @name = details['name']
    @age = details['age']
    @driver = false
  end

  def adult?
    if @age >= 18
      true
    elsif @age < 18
      false
    end
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end