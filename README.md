# Multi Nodal Baysian Unlearning
An experiment in implementing granular unlearning, with the idea of encouraging more lenient forms of unlearning in ML.

~~~ruby
# Standard unlearning
def unlearn
  print "Which dataset? >> " erase = gets.chomp
  
  dataset = File.readlines("_data/known_datasets.txt")
  
  system("rm _data/#{erase}.nb")
end

# Bulk unlearning
def gforget
  row = 0
  
  datasets = File.readlines("_data/known_datasets.txt")
  
  print "How many datasets? >> "; which = gets.chomp.to_i
  
  
  howmany.times do
    system("rm _data/#{datasets[row]}")
    
    row = row + 1
  end
end

# Use with last resort
def soft_reset
  system("rm -r _data; mkdir _data")
end
~~~
