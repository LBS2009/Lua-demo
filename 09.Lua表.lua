--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-25
-- Time: 9:10
-- To change this template use File | Settings | File Templates.
--

arr = {"a", "b"}
print(type(arr))

-- table 操作
-- 1.连接 concat
arr = {"a", "b", "c"}
print(table.concat(arr))
print(table.concat(arr, ", "))
print(table.concat(arr, ", ", 2, 3))
-- 2.插入和移除
fruits = {"banana","orange","apple"}
table.insert(fruits, "peach")
print(fruits[4])
-- 指定索引位插入
table.insert(fruits, 2, "mango")
print(fruits[2])
print(fruits[5])
-- 移除 只会删除最后一个
table.remove(fruits)
print(fruits[4])

-- 排序前
for k, v in ipairs(fruits) do
    print(k, v)
end
-- 排序
table.sort(fruits)
-- 排序后
for k, v in ipairs(fruits) do
    print(k, v)
end