require "SDK/ForEachFileHelper"
require "SDK/StringHelper"

--处理时需要用到的变量
local miniFileSize = 30 * 1024 * 1024 --XMB

--定义函数
local path = "D:/WorkSpace/Slots/CashFever/dev/clientproject_720/client/Assets"
local handleFileFunc = function(_filePath, _fileAttr)
    if _fileAttr.size >= miniFileSize and (string.EndWith(_filePath, ".jpg") or string.EndWith(_filePath, ".png")) then
        print(_filePath)
    end
end

--方法调用
ForEachEachFileInDir(path, handleFileFunc)
