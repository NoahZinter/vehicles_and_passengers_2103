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
end