def caesar_cipher(string, shift)
    alphabet_range = ('a'..'z').count
    results = ""
    upper_a = "A".ord
    lower_a = "a".ord

    string.split("").map do |char|
        if char.ord.between?(65, 90)
            base = char.ord - upper_a
            rotation = ((base + shift) % 26 + upper_a).chr
            results += rotation
        elsif char.ord.between?(97, 122)
            base = char.ord - lower_a
            rotation = ((base + shift) % 26 + lower_a).chr
            results += rotation
        end
    end
    results
end

p caesar_cipher("Hello, are you okay?", 3)