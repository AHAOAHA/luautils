local tUtils = require "luautils.table"
local ioUtils = require "luautils.io"

local file = "test.txt"
local content = "123456"
local tb = {name="AHAOAHA"}
ioUtils:WriterFile(file, content)
os.remove(file)