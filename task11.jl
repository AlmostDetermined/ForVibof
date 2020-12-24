include("./RL.jl")

function main11!(r)
    num_steps = through_rectangles_into_angle(r, (Sud, West))

    num_steps_to_right = sum(num_steps[1:2:end])
    num_steps_to_up = sum(num_steps[2:2:end])

    movements!(r, Nord, num_steps_to_up)
    putmarker!(r)
    num_steps_to_down = get_num_movements!(r, Nord)

    movements!(r, Ost, num_steps_to_right)
    putmarker!(r)
    num_steps_to_left = get_num_movements!(r, Ost)

    movements!(r, Sud, num_steps_to_down)
    putmarker!(r)
    movements!(r, Sud)

    movements!(r, West, num_steps_to_left)
    putmarker!(r)
    movements!(r, West)

    movements!(r, (Nord, Ost), reverse(num_steps))
end