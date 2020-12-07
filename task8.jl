function moveWest!(r::Robot, n)
    while n > 0
        move!(r, West)
        n -= 1
    end
end

function moveOst!(r::Robot, n)
    while n > 0
        move!(r, Ost)
        n -= 1
    end
end

function main8!(r::Robot)
    cnt = 0

    while true
        if isborder(r, Nord) == false
            break
        end

        cnt += 1

        if cnt % 2 == 1
            moveWest!(r, cnt)
        else
            moveOst!(r, cnt)
        end
    end         
end