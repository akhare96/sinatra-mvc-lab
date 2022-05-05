class PigLatinizer
    
    def piglatinize(phrase)
        phrase.split(" ").collect {|i|
            single_word(i)
        }.join(" ")
    end

    def single_word(word)
        if word[0].match(/[aAeEiIoOuU]/)
            word + "way"
        else
            array = word.split(/([aAeEiIoOuU].*)/)
            array[1] + array[0] + "ay"
        end
    end
end