println("="^70)
println("Day 3 Part 1")
println(" ")

input_data = readline("./aoc_2015/day3_input.txt")

function day3_p1_solver(directions)

    moves = Dict('^' => (0,1),
                'v' => (0,-1),
                '>' => (1,0),
                '<' => (-1,0))

    visited = Set()
    pos = (0,0)
    push!(visited, pos)

    for c in directions
        pos = pos .+ moves[c]
        push!(visited, pos)
    end
    length(visited)

end

houses_visited = day3_p1_solver(input_data)
println("ANSWER: $houses_visited")
println("="^70)

println("Day 3 Part 2")
println(" ")

function day3_p2_solver(directions)
    moves = Dict('^' => (0,1),
                'v' => (0,-1),
                '>' => (1,0),
                '<' => (-1,0))


    visited = Set([(0,0)])
    santa_pos = (0,0)
    robo_pos = (0,0)

    for (i,c) in enumerate(directions)
        if isodd(i)
            santa_pos = santa_pos .+ moves[c]
            push!(visited, santa_pos)
        else
            robo_pos = robo_pos .+ moves[c]
            push!(visited, robo_pos)
        end
        
    end
    length(visited)

end

houses_visited = day3_p2_solver(input_data)
println("ANSWER: $houses_visited")
println("="^70)