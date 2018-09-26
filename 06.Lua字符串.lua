--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-21
-- Time: 16:37
-- To change this template use File | Settings | File Templates.
--

-- 定义字符串
-- ""定义
str1 = "str1"
print(str1)

-- ''定义
str2 = 'str2'
print(str2)

-- 字符块 [[]]
str3 = [[
<html>
<header></header>
<body></body>
</html>
]]
print(str3)

-- 字符串操作
-- 1.转大写
a = "str"
print(string.upper(a))
-- 2.转小写
b = "STR"
print(string.lower(a))
-- 3.替换
-- 在字符串中替换,mainString为要替换的字符串， findString 为被替换的字符，
-- replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换）
s, n = string.gsub("aaaa", "a", "z", 3)
print(s)
print(n)
-- 4.查找
-- 在一个指定的目标字符串中搜索指定的内容(第三个参数为索引),返回其具体位置。不存在则返回 nil
string.find("abcdefg", "abc", 2)
-- 5.反转
print(string.reverse("abcde"))
-- 6.格式化
print(string.format("hello %s", "world"))
-- 7.char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)
print(string.char(97))
print(string.byte("abcd"))
-- 8.长度
print(string.len("abcdefg"))
-- 9.拷贝
print(string.rep("a", 3))
-- 10.连接
print("abc" .. "xyz")
-- 11.匹配多个
for word in string.gmatch("Hello Lua user", "%a+") do
    print(word)
end
-- 12.匹配单个
print(string.match("I have 2 questions for you.", "%d+ %a+"))
print(string.format("%d, %q", string.match("I have 2 questions for you.", "(%d+) (%a+)")))