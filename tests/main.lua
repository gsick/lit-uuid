local UUID = require("uuid")
local Clock = require("clocktime")

-- UUID seed
local s, ms, ns = Clock.time({ msec = true })
UUID.randomseed(s .. ms)

for i = 1, 20 do
  local id = UUID()
  p(id)
end
