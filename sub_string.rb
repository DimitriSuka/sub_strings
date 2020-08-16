dictionary = ["below","down","go","going","horn","how","howdy","it","i",
        "low","own","part","partner","sit", "below","down","go","going",
        "horn","how","howdy","it","i","low","own","part","partner","sit"]

user_array = []

def substring(word, dictionary)
    user_input = word.downcase.split(' ')

    dictionary.reduce(Hash.new(0)) do |result, value|
        if word.include?(value)
            result[value] = word.scan(value).length
        end
        puts result
    end
end

puts "Please enter a string:  "
user_input = gets.chomp

substring(user_input, dictionary)