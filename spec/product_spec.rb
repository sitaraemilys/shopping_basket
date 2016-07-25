require 'product'

describe Product do

  subject(:socks) { described_class.new("Socks", "S01") }

  describe '#initialize' do

    it 'has a name' do
      expect(socks.name).to eq "Socks"
    end

    it 'has a code' do
      expect(socks.code).to eq "S01"
    end
  end

end
