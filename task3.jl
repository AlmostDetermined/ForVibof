function markWholeSide!(r::Robot, side::HorizonSide)
    while isborder(r, side) == false
        move!(r, side)
        putmarker!(r)
    end
end

function markWholeField!(r::Robot)
    #Начальная позиция 0, 0
    while isborder(r, West) == false
        move!(r, West)
    end
    while isborder(r, Sud) == false
        move!(r, Sud)
    end

    #Начинаем закраску
    cnt = 1
    putmarker!(r)
    while isborder(r, Nord) == false
        if cnt % 2 == 1
            markWholeSide!(r, Ost)
            move!(r, Nord)
            putmarker!(r)
        else
            markWholeSide!(r, West)
            move!(r, Nord)
            putmarker!(r)
        end
        cnt  += 1
    end

    if cnt % 2 == 1
        markWholeSide!(r, Ost)
    else
        markWholeSide!(r, West)
    end
    #Всё поле промаркировано
end