def substring(string, array)
    # return hash with an instance of each word in the string and their frequency
    arr_string = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")
                       .reduce(Hash.new(0)) do |word, frequency|
                            word[frequency] += 1
                            word
    end
end
