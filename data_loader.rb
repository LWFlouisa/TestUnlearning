require 'naive_bayes'

a = NaiveBayes.load('_data/language/fraponic.nb') 

# b = File.readlines("_input/alphabet_set.txt")

b = "anos"
c = "urusegaru"

result_1 = a.classify(b)
# result_2 = a.classify(c)

puts result_1[0]
# puts result_2[0]
