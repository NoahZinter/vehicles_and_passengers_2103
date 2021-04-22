require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
  describe '#initialize' do
    it 'exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
    end
  end
end