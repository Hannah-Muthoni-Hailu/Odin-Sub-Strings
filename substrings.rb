def substrings(word, dictionary)
    word.downcase!
    res = {}
    dictionary.each do |substr|
        substr_lower = substr.downcase
        # Check if substring is in the word
        if word.include?(substr_lower)
            holder = word
            counter = 0
            while true do
                # Find the index of the substring
                ind = holder.index(substr_lower)+1
                # Increase count
                counter += 1
                # Remove the region that has already been searched in the word
                holder = holder.slice(ind..)
                # Check if there is another instance of the substring and break if there's none
                break if !holder.include?(substr_lower)
            end
            res[substr] = counter
        end
    end
    res
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dict)