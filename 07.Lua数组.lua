--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-25
-- Time: 8:50
-- To change this template use File | Settings | File Templates.
--

-- 一维数组
arr = {"Lua", "Js"}
for i = 1, 2 do
    print(arr[i])
end

-- 索引可以为负数
array = {}
-- 赋值
for i= -2, 2 do
    array[i] = i *2
end
-- 遍历
for i = 0, 2 do
    print(array[i])
end

-- 多维数组
