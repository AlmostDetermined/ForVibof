function moves!(r::Robot,side::HorizonSide)
    while isborder(r,side) == false
        move!(r,side)
        putmarker!(r)
    end
end

function mark_frame_perimetr!(r::Robot)
    moves!(r, Nord)
    moves!(r, Ost)
    moves!(r, Sud)
    moves!(r, West)
    #УТВ: По всему периметру стоят маркеры
    #УТВ: Робот - в исходном положении
end