--
-- Created by IntelliJ IDEA.
-- User: libosheng
-- Date: 2018-9-25
-- Time: 9:44
-- To change this template use File | Settings | File Templates.
--

module = {}
-- 定义常量
module.constant = "常量"
-- 定义公有函数
function module.func()
    print("public module func")
end
-- 定义私有函数
local function func2()
    print("private module func")
end

function module.func3()
    func2()
end

return module