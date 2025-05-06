---Return true if val is in the given table, false otherwise
---@param tab table
---@param val any
---@return boolean
local function has_value(tab, val)
    for _, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end


return {
    has_value = has_value,
}
