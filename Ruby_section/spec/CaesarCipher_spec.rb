require_relative '../CaesarCipher.rb'

describe CaesarCipher do
  caesar = CaesarCipher.new

  describe '#change' do
    it 'works with small positive shift' do
      expect(caesar.change('Zz', 5)).to eql('Ee')
    end

    it 'works with small negative shift' do
      expect(caesar.change('Ee', -5)).to eql('Zz')
    end

    it 'works with large positive shift' do
      expect(caesar.change('Zz', 83)).to eql('Ee')
    end

    it 'works with large negative shift' do
      expect(caesar.change('Ee', -83)).to eql('Zz')
    end

    it 'works with a phrase with punctuation' do
      expect(caesar.change('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it 'works with a phrase with a large shift' do
      expect(caesar.change('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it 'works with a phrase with a large negative shift' do
      expect(caesar.change('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end

    it 'works with a phrase with dash and upper case letter' do
      expect(caesar.change('middle-Outz', 2)).to eql('okffng-Qwvb')
    end
  end
end
