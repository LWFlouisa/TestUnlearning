# Multi Nodal Baysian Unlearning
An experiment in implementing granular unlearning, with the idea of encouraging more lenient forms of unlearning in ML.

~~~ruby
# Standard unlearning
def unlearn
  print "Which dataset? >> " erase = gets.chomp
  
  dataset = File.readlines("_data/known_datasets.txt")
  
  system("rm _data/#{erase}.nb")
end

# Random unlearnimg
def gforget
  row = 0
  
  datasets = File.readlines("_data/known_datasets.txt")
  
  print "Which dataset? >> "; which = gets.chomp.to_i
  
  system("rm _data/#{datasets[which]}")
end

# Use with last resort
def soft_reset
  system("rm -r _data; mkdir _data")
end
~~~
