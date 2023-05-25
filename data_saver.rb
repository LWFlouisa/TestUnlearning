require "naive_bayes"

require 'humanist_errors'
include HumanistErrors

with_human_errors do

a = NaiveBayes.new(
                   # Alphabetic components
                   :vowel,
                   :semivowel,
                   :consonant,
                   :doubleconsonant,
                   :dipthong,
                   :trithong,

                   # Grammatical components
                   :word_gender,             :noun,
                   :adjective,        :conjunction,
                   :preposition,             :verb,
                   :adverb,           :punctuation,
                   :personal_pronoun, :honorificos,
)

a.db_filepath = "_data/language/fraponic.nb"

# Single character training
# These functions as part of the standard Latin alphabet minus some characters.

## Vowels
a.train(:vowel, "a", "word")
a.train(:vowel, "e", "word")
a.train(:vowel, "i", "word")
a.train(:vowel, "o", "word")
a.train(:vowel, "u", "word")

# Semivowels
a.train(:semivowel, "x", "word")
a.train(:semivowel, "y", "word")

# Consonants
a.train(:consonant, "b", "word")
a.train(:consonant, "c", "word")
a.train(:consonant, "g", "word")
a.train(:consonant, "k", "word")
a.train(:consonant, "m", "word")
a.train(:consonant, "p", "word")
a.train(:consonant, "q", "word")
a.train(:consonant, "t", "word")
a.train(:consonant, "u", "word")
a.train(:consonant, "v", "word")
a.train(:consonant, "w", "word")
a.train(:consonant, "z", "word")

# Double Consonants
a.train(:doubleconsonant, "d", "word")
a.train(:doubleconsonant, "f", "word")
a.train(:doubleconsonant, "j", "word")
a.train(:doubleconsonant, "n", "word")
a.train(:doubleconsonant, "l", "word")
a.train(:doubleconsonant, "r", "word")
a.train(:doubleconsonant, "s", "word")
a.train(:doubleconsonant, "l", "word")
a.train(:doubleconsonant, "m", "word")


# Dipthongs and Tripthongs
# These function as the sounds for the Angel script font.

# Section B
a.train(:dipthong, "ba", "word")
a.train(:dipthong, "be", "word")
a.train(:dipthong, "bi", "word")
a.train(:dipthong, "bo", "word")
a.train(:dipthong, "bu", "word")

# Section C
a.train(:dipthong, "ca", "word")
a.train(:dipthong, "ce", "word")
a.train(:dipthong, "ci", "word")
a.train(:dipthong, "co", "word")
a.train(:dipthong, "cu", "word")

# Section G
a.train(:dipthong, "ga", "word")
a.train(:dipthong, "ge", "word")
a.train(:dipthong, "gi", "word")
a.train(:dipthong, "go", "word")
a.train(:dipthong, "gu", "word")

# Section K
a.train(:dipthong, "ka", "word")
a.train(:dipthong, "ke", "word")
a.train(:dipthong, "ki", "word")
a.train(:dipthong, "ko", "word")
a.train(:dipthong, "ku", "word")

# Section M
a.train(:dipthong, "ma", "word")
a.train(:dipthong, "me", "word")
a.train(:dipthong, "mi", "word")
a.train(:dipthong, "mo", "word")
a.train(:dipthong, "mu", "word")

# Section P
a.train(:dipthong, "pa", "word")
a.train(:dipthong, "pe", "word")
a.train(:dipthong, "pi", "word")
a.train(:dipthong, "po", "word")
a.train(:dipthong, "pu", "word")

# Section Q
a.train(:dipthong, "qa", "word")
a.train(:dipthong, "qe", "word")
a.train(:dipthong, "qi", "word")
a.train(:dipthong, "qo", "word")
a.train(:dipthong, "qu", "word")

# Section T
a.train(:dipthong, "ta", "word")
a.train(:dipthong, "te", "word")
a.train(:dipthong, "ti", "word")
a.train(:dipthong, "to", "word")
a.train(:dipthong, "tu", "word")

# Section V
a.train(:dipthong, "va", "word")
a.train(:dipthong, "ve", "word")
a.train(:dipthong, "vi", "word")
a.train(:dipthong, "vo", "word")
a.train(:dipthong, "vu", "word")

# Section Z
a.train(:dipthong, "za", "word")
a.train(:dipthong, "ze", "word")
a.train(:dipthong, "zi", "word")
a.train(:dipthong, "zo", "word")
a.train(:dipthong, "zu", "word")

# Phonetically tripthongs
## Section D
a.train(:trithong, "da", "word")
a.train(:trithong, "de", "word")
a.train(:trithong, "di", "word")
a.train(:trithong, "do", "word")
a.train(:trithong, "du", "word")

## Section S
a.train(:trithong, "sa", "word")
a.train(:trithong, "se", "word")
a.train(:trithong, "si", "word")
a.train(:trithong, "so", "word")
a.train(:trithong, "su", "word")

## Section H
a.train(:trithong, "ha", "word")
a.train(:trithong, "he", "word")
a.train(:trithong, "hi", "word")
a.train(:trithong, "ho", "word")
a.train(:trithong, "hu", "word")

## Section N
a.train(:trithong, "ba", "word")
a.train(:trithong, "be", "word")
a.train(:trithong, "bi", "word")
a.train(:trithong, "bo", "word")
a.train(:trithong, "bu", "word")

## Sections X
a.train(:trithong, "xa", "word")
a.train(:trithong, "xe", "word")
a.train(:trithong, "xi", "word")
a.train(:trithong, "xo", "word")
a.train(:trithong, "xu", "word")

# Specific constructed language words.
## Honorificos
#a.train(:honorificos, "Goz", "word")
a.train(:honorificos, "Ga",    "word")
a.train(:honorificos, "Gu",    "word")
a.train(:honorificos, "Gos",   "word")
a.train(:honorificos, "Kima",  "word")
a.train(:honorificos, "Kimu",  "word")
a.train(:honorificos, "Kimos", "word")
a.train(:honorificos, "Sama",  "word")
a.train(:honorificos, "Samu",  "word")
a.train(:honorificos, "Sanos", "word")
a.train(:honorificos, "Sha",   "word")
a.train(:honorificos, "Shu",   "word")
a.train(:honorificos, "Shos",  "word")
a.train(:honorificos, "Sana",  "word")
a.train(:honorificos, "Sanu",  "word")
a.train(:honorificos, "Sanos", "word")

## Word Genders
a.train(:word_gender,  "anu", "word")
a.train(:word_gender,  "ana", "word")
a.train(:word_gender, "anos", "word")

## Nouns
a.train(:noun,             "ahusacos", "word"); a.train(:noun,    "baozeng", "word");
a.train(:noun, "koneverogenitodevute", "word"); a.train(:noun,   "coranore", "word");
a.train(:noun,             "corasuhe", "word"); a.train(:noun,     "domche", "word");
a.train(:noun,         "resetudanite", "word"); a.train(:noun,      "zemma", "word");
a.train(:noun,                 "zhhe", "word"); a.train(:noun,     "gadcon", "word");
a.train(:noun,            "gapacadde", "word"); a.train(:noun,      "homme", "word");
a.train(:noun,            "ipohetiku", "word"); a.train(:noun,       "mede", "word");
a.train(:noun,                "amase", "word"); a.train(:noun, "nunonorede", "word");
a.train(:noun,           "nunedesude", "word"); a.train(:noun,      "onche", "word");
a.train(:noun,          "oraretareve", "noun"); a.train(:noun,  "urusegaru", "word");
a.train(:noun,                 "pede", "noun"); a.train(:noun, "zamurapohe", "word");
a.train(:noun,                "zoeud", "noun"); a.train(:noun,     "zommez", "word");
a.train(:noun,                "tante", "noun"); a.train(:noun, "vidixadixu", "word");
a.train(:noun,          "arbrejakata", "noun"); a.train(:noun,      "adede", "word");
a.train(:noun,            "ibadereva", "noun");

# Personal Pronoun
a.train(:personal_pronoun, "Ez", "word"); a.train(:personal_pronoun, "Ehhe", "word");

# Adjectives
a.train(:adjective,        "bheu", "word"); a.train(:adjective,             "bdaun", "word");
a.train(:adjective,       "naune", "word"); a.train(:adjective,         "nkkogomen", "word");
a.train(:adjective,       "mauve", "word"); a.train(:adjective,               "nod", "word");
a.train(:adjective,      "odange", "word"); a.train(:adjective,    "dadzumu-mnmahe", "word");
a.train(:adjective,       "rouge", "word"); a.train(:adjective,             "zangu", "word");
a.train(:adjective, "kendosavate", "word"); a.train(:adjective, "xosfexinipeneture", "word");

# Verb
a.train(:verb,         "azfetere", "word"); a.train(:verb, "ibe", "word");
a.train(:verb,          "vohette", "word");

# Adverb
a.train(:adverb, "vedt", "word")

# Conjucation
a.train(:conjunction, "cette", "word");

# Save the data
a.save

end

## Sections for testing individual characters.
# b = File.readlines("_input/alphabet_set.txt")

# result = a.classify(b)

# puts result
