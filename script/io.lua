local iou = {}

function iou:WriterFile(filename, content)
    local file = io.open(filename, "w")
    if file == nil then
        return error("open file error")
    end
    file:write(content)
    file:close()
end

return iou