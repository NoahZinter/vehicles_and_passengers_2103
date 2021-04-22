require './lib/passenger'

describe Passenger do
  describe '#initialize' do
    it 'exists' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie).is_a? Passenger
    end
  end
end