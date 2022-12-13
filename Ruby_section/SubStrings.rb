
class SubStrings

  def find(word, dictionary)
    result = {}

    dictionary.each do |i|
      i.downcase!
      counter = word.downcase.scan(/(?=#{i})/).count
      if counter > 0 then
        result[i] = result[i].nil? ? counter : result[i] + counter
      end
    end

    result
  end
end


dic = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


obj_1 = SubStrings.new
p obj_1.find("below", dic)

obj_2 = SubStrings.new
p obj_2.find("Howdy partner, sit down! How's it going?", dic)
