-- 未赋值的变量类型 nil
print(type(a))
-- true 或 false 的类型是 boolean
print(type(true))
-- 数字类型 number
print(type(1))
-- 字符串类型 string
print(type("abc"))
-- type方法 function
print(type(type))

-- 和 nil 作比较时应该加上双引号
print(x == nil) -- true
print(type(x) == nil) -- false
print(type(x) == "nil") -- true

-- 字符串
-- 双引号表示
String1 = "这是字符串"
-- 单引号表示
String1 = '这是字符串'
-- [[]]表示一段字符串
strings = [[
    这是字符串1abc
    这是字符串2
    这是字符串3
]]
print(strings)

-- 数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字
print("2" + 4)

-- 字符串连接
print(123 .. 456)

-- 字符串长度 #
print(#"abcdefg")

-- table表
tbl = {"a", "b", "c"}
print(tbl) -- 打印的是地址 484b61fc
-- 遍历表
for k, v in pairs(tbl) do
    -- 索引从 1 开始
    print(k, v)
end

-- 定义函数
function test1(n)
    if (n == 0) then
        return 1
    else
        return n * test1(n - 1)
    end
end

-- 调用函数
print(test1(5))

-- 将函数赋值给变量
test2 = test1
print(test2(5))

-- 定义含有函数作为参数的函数
function testFun(tbl, fun)
    for k, v in pairs(tbl) do
        print(fun(k, v))
    end
end

-- 调用函数
tbl = {k1 = "v1", k2 = "k2"}
testFun(tbl,
    function(k, v)
        return k .. " = " .. v
    end
)
