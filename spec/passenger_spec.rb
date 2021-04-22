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

  describe '#adult?' do
    it 'returns true if over 18, false if under' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to eq true
      expect(taylor.adult?).to eq false
    end
  end

  describe '#driver?' do
    it 'is false by default' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to eq false
    end
  end
end