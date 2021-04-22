require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
  describe '#initialize' do
    it 'exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it 'has attributes' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      expect(vehicle.year).to eq '2001'
      expect(vehicle.make).to eq 'Honda'
      expect(vehicle.model).to eq 'Civic'
    end
  end

  describe '#speeding?' do
    it 'defaults to false' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to eq false
    end
  end

  describe '#speed' do
    it 'sets speeding? to true' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      vehicle.speed

      expect(vehicle.speeding?).to eq true
    end
  end

  describe '#passengers' do
    it 'starts with an empty array of passengers' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq []
    end
  end

  describe '#add_passenger' do
    it 'adds passengers to @passengers' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      expect(vehicle.passengers).to eq ([charlie, jude, taylor])
    end
  end

  describe '#num_adults' do
    it 'calculates the number of adults in vehicle' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.num_adults).to eq 2
    end
  end
end