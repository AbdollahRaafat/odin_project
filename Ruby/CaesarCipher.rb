
class CaesarCipher
  def crypt(a_letter, key)
    c = a_letter.ord + key

    is_upper = a_letter == a_letter.upcase

    is_upper ? (c = ((c-"A".ord)%26)+ "A".ord) : (c = ((c-"a".ord)%26)+ "a".ord)
    c.chr
  end


  def change(text, key)
    text = text.split("")
    result = ""

    text.each do |i|
      cryptable = i.match(/^[[:alpha:]]$/) ? true : false

      if cryptable then
        result << crypt(i, key)
      elsif
        result << i
      end
    end

    result
  end
end

# test_1 = "What a string!"
# answer_1 = "Bmfy f xywnsl!"

# test_2 = "middle-Outz"
# answer_2 = "okffng-Qwvb"

# test_3 = "Hello, World!"
# answer_3 = "Ebiil, Tloia!"



# change(test_1, 5) == answer_1 ? (puts "💹 Decoding succeed") : (puts "❌ Decoding faild")
# change(test_2, 2) == answer_2 ? (puts "💹 Decoding succeed") : (puts "❌ Decoding faild")
# change(test_3, -55) == answer_3 ? (puts "💹 Decoding succeed") : (puts "❌ Decoding faild")

