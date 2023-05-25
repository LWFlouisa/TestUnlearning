# Multi Nodal Baysian Unlearning
An experiment in implementing granular unlearning, with the idea of encouraging more lenient forms of unlearning in ML.

~~~ruby
# Standard unlearning
def unlearn
  print "Which dataset? >> "; erase = gets.chomp
  
  system("rm _data/#{erase}.nb")

  sleep(3)

  system("ruby conlang_saver.rb")
end

# Bulk unlearning
def gforget
  row = 0
  
  datasets = File.readlines("_data/index/known_datasets.txt")
  
  print "How many datasets? >> "; howmany = gets.chomp.to_i
  
  
  howmany.times do
    directory_file = datasets[row].to_s

    system("rm _data/language/#{directory_file}")
    
    row = row + 1
  end
end

# Use with last resort
def execute
  # systematically remake the program.
  system("rm -r _data; mkdir    _data; cd _data;
          mkdir index; mkdir language; cd index; touch known_datasets.txt")

  # Retrain datasets automatically
  system("ruby conlang_saver.rb; ruby data_saver.rb")
end

# unlearn
# gforget
execute
~~~
