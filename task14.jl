include("./RL.jl")

function main14!(r::Robot)
    for i = 0:3
      side = HorizonSide(i)
      num_steps = mark_and_enumerate_if_possible!(r, side)
      movements_if_possible!(r, inverse(side), num_steps)
    end
end