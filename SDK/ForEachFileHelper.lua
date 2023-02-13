require "lfs"

function ForEachEachFileInDir(_dirPath, _handleFileFunc)
    for fileName in lfs.dir(_dirPath) do
        if fileName ~= "." and fileName ~= ".." then
            local filePath = string.format("%s/%s", _dirPath, fileName)
            local fileAttr = lfs.attributes(filePath)
            if fileAttr.mode == "directory" then
                ForEachEachFileInDir(filePath, _handleFileFunc)
            else
                _handleFileFunc(filePath, fileAttr)
            end
        end
    end
end
