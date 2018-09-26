--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-21
-- Time: 14:47
-- To change this template use File | Settings | File Templates.
--

-- while 循环
a = 10
while (a < 20) do
    print("a 的值是: ", a)
    a = a + 1
end

-- for 循环
-- var从exp1变化到exp2，每次变化以exp3为步长递增var，并执行一次"执行体"。exp3是可选的，如果不指定，默认为1
for i = 1, 20, 1 do
    print(i)
end

-- 泛型 for 循环
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end

-- pairs 和 ipairs 对比
a = {}
a[1] = 1
a[4] = 4
-- ipairs
for k, v in ipairs(a) do
    print(k, v)
end
-- pairs
for k, v in pairs(a) do
    print(k, v)
end

-- repeat...until
count = 10
repeat
    print(count)
    count = count - 1
until(count < 0) -- 直到符合此条件的时候结束

-- break
a = 1
while (a < 10) do
    print(a)
    a = a + 1
    if (a == 5) then
        break
    end
end

-- 无限循环
while (true) do
    print("forever")
end