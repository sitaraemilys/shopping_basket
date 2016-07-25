require 'products'

describe Products do

  describe '#initialize' do
    it 'has an empty catalog' do
      expect(subject.catalog).to be_empty
    end
  end

end
