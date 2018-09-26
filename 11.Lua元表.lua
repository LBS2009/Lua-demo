--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-25
-- Time: 10:09
-- To change this template use File | Settings | File Templates.
--

-- __元方法

-- __index 中定义属性
other = { foo = 1 }
t = setmetatable({}, { __index = other })
print(t.foo)
print(t.bar)

-- __index 中定义函数
-- 如果__index包含一个函数的话，Lua就会调用那个函数，table和键会作为参数传递给函数。
mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})
print(mytable.key1, mytable.key2)