println("="^70)
println("Day 2 Part 1")
println(" ")

function solver_day2_p1()
    input = readlines("./aoc_2015/day2_input.txt")

    wrapper_vec = []
    for c in input
        dims = parse.(Int,split(c, "x"))
        l, w, h = dims[1], dims[2], dims[3]
        sides = [l*w, w*h, h*l]
        wrapper = 2*sides[1] + 2*sides[2] + 2*sides[3] + minimum(sides)
        push!(wrapper_vec, wrapper)
    end
    
    sum(wrapper_vec)
end

total_wrapper = solver_day2_p1()
println("ANSWER: $total_wrapper")
println("="^70)

println("="^70)
println("Day 2 Part 2")
println(" ")

function day2_p2_solver()
    input = readlines("./aoc_2015/day2_input.txt")

    ribbon_vec = []
    for c in input
        dims = parse.(Int,split(c, "x"))
        l, w, h = dims[1], dims[2], dims[3]
        ribbon_l = (l+l+w+w) + l*w*h
        push!(ribbon_vec, ribbon_l)
    end
    sum(ribbon_vec)
end

total_ribbon = day2_p2_solver()
println("ANSWER: $total_ribbon")
println("="^70)
