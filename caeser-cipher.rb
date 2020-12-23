def caeser_cipher (str, num) 

    arr_of_nums = str.split("").map do |char| 
        char_number = char.ord 
        if(char.between?("a", "z"))
            ((char_number - "a".ord + num) % 26 + "a".ord).chr
        elsif(char.between?("A", "Z"))
            ((char_number - "A".ord + num) % 26 + "A".ord).chr
        else
            char
    end
end
arr_of_nums.join

end

p caeser_cipher("Ariel", 1)
