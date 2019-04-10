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


=begin
  
      ########### More concise way of this which i was to dumb to think of myself ##########

def substrings(string, dictionary)

  hash = {}

  string.downcase! #We want all words to be lowercase so we can match them in the dictionary.

  dictionary.each do |e|
    if string.scan(/#{e}/).count > 0
      hash[e] = string.scan(/#{e}/).count #Counts occurences of the regexp in the string and stores it in hash.
    end
  end

  return hash
end

=end

dictionary = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit","howdy"]

puts substring("Howdy low",dictionary)

