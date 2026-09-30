------------------------------------------------------
-- GFWTable.lua
-- Utilities for manipulating tables 
------------------------------------------------------
GFWTABLE_THIS_VERSION = 8;

-- Mean: returns the mean value of a table of numbers
function GFWTable_temp_Mean(aTable)
    if (aTable == nil or #aTable == 0) then return nil; end
    return GFWTable.Sum(aTable) / #aTable;
end

-- Sum: returns the sum of a table of numbers
function GFWTable_temp_Sum(aTable)
    if (aTable == nil or #aTable == 0) then return nil; end
    local sum = 0;
    for i=1, #aTable do
        if (tonumber(aTable[i])) then sum = sum + aTable[i]; end
    end
    return sum;
end

-- Median: returns the median value
function GFWTable_temp_Median(aTable)
    if (aTable == nil or #aTable == 0) then return nil; end
    if (#aTable == 1) then return aTable[1]; end
    local sortedTable = GFWTable.Copy(aTable);
    table.sort(sortedTable);
    local count = #sortedTable;
    local median;
    if (math.fmod(count, 2) == 0) then
        local middleIndex1 = count / 2;
        local middleIndex2 = middleIndex1 + 1;
        median = (sortedTable[middleIndex1] + sortedTable[middleIndex2]) / 2;
    else
        local trueMiddleIndex = (count + 1) / 2;
        median = sortedTable[trueMiddleIndex];
    end
    return median;
end

-- Merge: returns the union of two tables
function GFWTable_temp_Merge(table1, table2)
    local newTable = { };
    if (table1) then
        for i=1, #table1 do table.insert(newTable, table1[i]); end
    end
    if (table2) then
        for i=1, #table2 do
            if (GFWTable.IndexOf(newTable, table2[i]) == 0) then table.insert(newTable, table2[i]); end
        end
    end
    return newTable;
end

-- Diff: returns the difference of two tables
function GFWTable_temp_Diff(table1, table2)
    local newTable = { };
    if (table1 == nil) then table1 = {}; end
    if (table2 == nil) then table2 = {}; end
    for i=1, #table1 do
        if (GFWTable.IndexOf(table2, table1[i]) == 0) then table.insert(newTable, table1[i]); end
    end
    for i=1, #table2 do
        if (GFWTable.IndexOf(table1, table2[i]) == 0) then table.insert(newTable, table2[i]); end
    end
    return newTable;
end

-- Subtract: returns items in table1 not in table2
function GFWTable_temp_Subtract(table1, table2)
    local newTable = { };
    if (table1 == nil or #table1 == 0) then return newTable; end
    if (table2 == nil or #table2 == 0) then return table1; end
    for i=1, #table1 do
        if (GFWTable.IndexOf(table2, table1[i]) == 0) then table.insert(newTable, table1[i]); end
    end
    return newTable;
end

-- Copy: copies table elements
function GFWTable_temp_Copy(aTable)
    local newTable = { };
    if (aTable) then
        for i=1, #aTable do newTable[i] = aTable[i]; end
    end
    return newTable;
end

-- Count: returns number of items in a table regardless of whether it has numeric indices.
function GFWTable_temp_Count(aTable)
    if (aTable == nil or type(aTable) ~= "table") then return nil; end
    local count = 0;
    for key, value in pairs(aTable) do count = count + 1; end
    return count;
end

-- PairsByKeys: an iterator a la pairs() but with keys sorted
function GFWTable_temp_PairsByKeys(t,f)
    local a = {}
    for n in pairs(t) do table.insert(a, n) end
    table.sort(a, f)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil else return a[i], t[a[i]] end
    end
    return iter
end

------------------------------------------------------
-- load only if not already loaded
------------------------------------------------------
if (GFWTable == nil) then GFWTable = {}; end
local G = GFWTable;
if (G.Version == nil or (tonumber(G.Version) ~= nil and G.Version < GFWTABLE_THIS_VERSION)) then
    -- Functions
    G.Mean = GFWTable_temp_Mean;
    G.Sum = GFWTable_temp_Sum;
    G.Median = GFWTable_temp_Median;
    G.Merge = GFWTable_temp_Merge;
    G.Diff = GFWTable_temp_Diff;
    G.Subtract = GFWTable_temp_Subtract;
    G.IndexOf = GFWTable_temp_IndexOf;
    G.KeyOf = GFWTable_temp_KeyOf;
    G.Copy = GFWTable_temp_Copy;
    G.Count = GFWTable_temp_Count;
    G.PairsByKeys = GFWTable_temp_PairsByKeys;

    -- Set version number
    G.Version = GFWTABLE_THIS_VERSION;
end