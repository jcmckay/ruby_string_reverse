puts 'The input string: '
puts ARGV[0]

puts 'Reverse String with .reverse()'
puts ARGV[0].reverse()

puts 'Reverse a string with .reverse_each'
ARGV[0].split('').reverse_each {|c| print c }

puts ''

puts 'Reverse a string using another array'
index = 0
ary = []
str = ARGV[0].dup

while index < str.length do
  ary << str[str.length-(index+1)]
  index += 1
end

puts ary.join

puts 'Revsere a string in place' 
i = 0
str = ARGV[0].dup
len = str.length

while i < len / 2 do
  temp = str[i]
  str[i] = str[str.length-(1+i)]
  str[str.length-(1+i)] = temp
  i += 1
end

puts str