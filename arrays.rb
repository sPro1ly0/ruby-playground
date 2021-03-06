# create an array x = [] OR x = Array.new(number of elements in array, the value)

b = Array.new(5)
print b # [nil, nil, nil, nil, nil], no value set

c = Array.new(3, 'chocolate')
print c # ['chocolate', 'chocolate', 'chocolate']

def Superincreasing (arr)
    a = Array.new(5) { |i| i = i * 3 } # index, [0, 1, 2, 3, 4]
    return a.to_s
end

puts Superincreasing([]) # [0, 3, 6, 9, 12]

puts c.size # 3
puts c.length # 3

def CompareArr(a, b)
    c = a & b
    return c.to_s
end

puts CompareArr([1, 2, 3], [1, 2, 4, 5, 6]) # [1, 2]

def JoinArr(a, b)
    c = a | b
    return c.to_s
end

puts JoinArr([1, 2, 3], [1, 2, 4, 5, 6]) # [1, 2, 3, 4, 5, 6]

e = [1, 2, 3]
e << 4 # push
print e # [1, 2, 3, 4]

f = e.take(3) # take first elements
print f # [1, 2, 3]

g = e.drop(2) # drop first elements
print g # [3, 4]

e.delete_at(2) # delete element at index 2
print e # [1, 3, 4]

# same methods used in JS: push(), pop(), shift()

def Inc(arr)
    total = 0
    arr.each do |e|
        if e < total
            return false
        end
        total += e
    end

    return true
end
puts Inc([1, 2, 3, 4]) # false

# map, the following both result in a new array [4, 16, 36, 64]
[2, 4, 6, 8].map {|num| num ** 2} # single line

[2, 4, 6, 8].map do |num| # multiple lines
    num ** 2
end

personality_types = ['bad', 'good', 'great']

p = personality_types.map { |type| type + ' person' }
puts p.to_s # ['bad person', 'good person', 'great person']

sports = ['tennis', 'basketball', 'baseball', 'football']
sports.each_with_index do |sport, index| # each_with_index keeps track of index
    puts index.to_s + '. ' + sport # 0. tennis 1. basketball ...
end

words = ['all', 'my', 'cookies']
my_words = words.any? do |w| # any?() iterates over each element and returns true for any true conditions
    w[0] == 'a'
end
puts my_words # true

your_words = words.all? do |w| # all? returns true if all elements pass true condition
    w[0] == 'a'
end
puts your_words # false

w = ['water', 'watermelon', 'wall', 'water slide']
# returns first element that matches
w.find do |w| 
    w[0..1] == 'wa'
end

# returns all elements that match
w.find_all do |w|
    w[0..1] == 'wa'
end
# OR
w.select do |w|
    w[0..1] == 'wa'
end