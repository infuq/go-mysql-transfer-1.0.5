local ops = require("mongodbOps")
local db = require("dbOps")

local row = ops.rawRow()
local action = ops.rawAction()

local updateValue = {}
updateValue["linkman"] = row["linkman"]

local filter = {}
filter["warehouseName"] = row["warehouse_name"]
updateValue["filter"] = filter

if action == "update" then
    ops.UPDATE("batchLog", nil, updateValue)
elseif action == "delete" then

else

end
