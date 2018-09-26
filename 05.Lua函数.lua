--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-21
-- Time: 15:53
-- To change this template use File | Settings | File Templates.
--

-- 定义函数
function max(num1, num2)
    local result
    if (num1 > num2) then
        result = num1
    else
        result = num2
    end
    return result
end

print(max(1, 2))

-- 定义多返回值的函数
function maxinum(tbl)
    if (#tbl == 0) then
        return 0, 0
    end
    local index = 1
    local value = tbl[index]
    for i, v in pairs(tbl) do
        if (v > value) then
            value = v
            index = i
        end
    end
    return index, value
end

tbl = {3, 5, 1, 8, 4}
k, v = maxinum(tbl)
print(k, v)

-- 可变参数
function sum(...)
    local sum = 0
    for k, v in pairs(...) do
        sum = sum + v
    end
    return sum
end

tbl = {1, 2, 3, 4, 5}
print(sum(tbl))

-- select函数
function count(n, ...)
    -- elect("#", ...)获取可变参数的数量
    local count = select("#", ...)
    -- select(n, ...)获取可变参数的第n位的值
    local value = select(n, ...)
    return value, count
end

print(count(5,2,3,4,5,6))