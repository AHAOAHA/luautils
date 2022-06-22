local iou = {}

function iou:WriterFile(filepath, content)
    local file = io.open(filepath, "w")
    if file == nil then
        return error("open file error")
    end
    file:write(content)
    file:close()
end

return iou