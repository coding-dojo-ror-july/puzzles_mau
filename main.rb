# Assignment: Ruby Puzzles
=begin
Work on the puzzles below. 
Make your code as clean as possible.
Put all of your answers in a single file and upload below.
Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. 
Print the sum of all numbers in the array. 
=end
[3,5,1,2,7,9,8,13,25,32].reduce(:+)

=begin
Also have the function return an array that only include numbers that are greater than 10 
(e.g. when you pass the array above, 
it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
=end
[3,5,1,2,7,9,8,13,25,32].select{|x| x>10} 
[3,5,1,2,7,9,8,13,25,32].find_all{|x| x>10} 
[3,5,1,2,7,9,8,13,25,32].reject{|x| x<=10} 
[3,5,1,2,7,9,8,13,25,32].delete_if{|x| x<=10} 

=begin
Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. 
Shuffle the array and print the name of each person.
Have the program also return an array with names that are longer than 5 characters.
=end
["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"].shuffle
["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"].select{|x| x.length>5}

=begin
Create an array that contains all 26 letters in the alphabet (this array must have 26 values). 
Shuffle the array and display the last letter of the array. 
Have it also display the first letter of the array. 
If the first letter in the array is a vowel, have it display a message.
=end
a = ("a".."z").to_a.shuffle
puts a.last
puts a.first
puts "#{a.first} is a vowel" if ["a","e","i","o","u"].include? a.first

=begin
Generate an array with 10 random numbers between 55-100.
=end
a=[]
10.times{a<<rand(55..100)}
puts a

=begin
Generate an array with 10 random numbers between 55-100 
and have it be sorted (showing the smallest number in the beginning). 
Display all the numbers in the array. 
Next, display the minimum value in the array as well as the maximum value
=end
a=[]
10.times{a<<rand(55..100)}
puts a.sort.to_s
puts a.min
puts a.max

=begin
Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
=end
s=""
5.times { s << rand(65..90).chr }
puts s

=begin
Generate an array with 10 random strings that are each 5 characters long
=end
a=[]
10.times do
  s=""
  5.times { s << rand(65..90).chr }
  a<<s
end
puts a