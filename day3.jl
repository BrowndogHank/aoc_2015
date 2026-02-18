println("="^70)
println("Day 3 Part 1")
println(" ")

input_data = readline("./aoc_2015/day3_input.txt")
function day3_p1_solver(directions)

    dict = Dict('^' => (0,1),
                'v' => (0,-1),
                '>' => (1,0),
                '<' => (-1,0))

    visited = Set()
    position = (0,0)
    push!(visited, position)

    for c in directions
        move = dict[c]
        position = (position[1] + move[1], position[2] + move[2])
        push!(visited, position)
    end
    length(visited)

end

houses_visited = day3_p1_solver(input_data)
println("ANSWER: $houses_visited")
println("="^70)

