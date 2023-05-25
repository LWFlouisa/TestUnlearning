require "naive_bayes"

require 'humanist_errors'
include HumanistErrors

with_human_errors do
  a = NaiveBayes.load('_data/language/bianca.nb') 

  ## Spam
  b = "BIANCA: La cabine braun es azeoir pedecise."

  result = a.classify(b)

  print "That makes #{result[0]}."
end
