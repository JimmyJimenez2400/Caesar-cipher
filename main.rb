#iterate through a to z, we could do ('a'..'z')
#shifting is basicallt moving forward or backwards depending on the "shift"
#We could split the array by doing. split("") and shifting doing letters depending on "shift"

def shift_number(word, shift)
    alphabet_range = ('a'..'z').count
    first = 'a'.ord #97
    ((word.ord - first + shift) % alphabet_range + first).chr
end

def caesar_cipher(string, shift)
    string.downcase.split("").map {|word| shift_number(word, shift)}.join
end

caesar_cipher("Cat", 3)

