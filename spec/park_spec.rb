require './lib/park'
require './lib/vehicle'
require './lib/passenger'

describe Park do
  describe '#initialize' do
    it 'exists' do
      park = Park.new('Jellystone', 1)
      expect(park).is_a? Park
    end

    it 'has attributes' do
      park = Park.new('Jellystone', 1)
      expect(park.name).to eq 'Jellystone'
      expect(park.admission).to eq 1
    end
  end
end