require './lib/passenger'

describe Passenger do
  describe '#initialize' do
    it 'exists' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie).is_a? Passenger
    end

    it 'has attributes' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie.name).to eq 'Charlie'
      expect(charlie.age).to eq 18
    end

  end
end