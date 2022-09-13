require 'pry-byebug'
def substrings(string, dict)
  string.downcase.split(" ").reduce(Hash.new) do |hash, word|
    dict.each do |substring|
      if word.include?(substring)
        if hash.include?(substring)
          hash.update(substring => hash[substring] + 1)
        else
          hash.update(substring => 1)
        end
      else
        hash
      end
    end
    hash
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts(substrings("Howdy partner, sit down! How's it going?", dictionary))
