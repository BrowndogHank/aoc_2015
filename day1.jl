## Part 1
input = readline("./aoc_2015/day1_input.txt")
floor = 0 
for c in input 
    if c == '('
        floor += 1
    elseif c == ')'
        floor -= 1
    end
end

println("day 1 part 1 answer: $floor")

## Part 2
# Find first position where he enters basement [-1], first index is position 1,2,3,4 etc
floor = 0
pos = 0
while floor >= 0
    for c in input 
        if c == '('
            floor += 1
        elseif c == ')'
            floor -= 1
        end 
    end
    pos += 1
end

println("day 1 part 2 answer: $pos")
