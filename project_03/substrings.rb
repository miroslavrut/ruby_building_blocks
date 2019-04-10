def substring(word, dictionary)
  count = Hash.new(0)
  words = word.split(" ")
  dictionary.each do |x|
    words.each do |w|
    count[w.downcase.to_sym] +=1 if w.downcase.match? x
    end
  end
  return count
end

dictionary = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit","howdy"]

puts substring("Howdy low",dictionary)

