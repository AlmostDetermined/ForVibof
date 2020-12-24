include("./RL.jl")

function main14!(r::Robot)
    for side in (Nord, Ost, Sud, West)
        num_steps = mark_and_enumerate_if_possible!(r, side)
        movements_if_possible!(r, inverse(side), num_steps)
    end
end