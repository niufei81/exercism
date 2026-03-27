local DNA = {}

local function parse(str)
    local dna = {A=0, T=0, C=0, G=0}
    if str ~= '' then 
        for i=1, #str do
            local c = str:sub(i,i)
            if not dna[c] then
                error("Invalid Sequence")
            end
            dna[c] = dna[c] + 1
        end
    end
    return dna
end

function DNA:new(str)
    local nucleotideCounts = parse(str)
    local obj = {nucleotideCounts = nucleotideCounts}

    self.__index = self
    setmetatable(obj, self)

    return obj
end

function DNA:count(c)
    if self.nucleotideCounts['A'] == 0 and self.nucleotideCounts['C'] == 0 and self.nucleotideCounts['T'] == 0 and self.nucleotideCounts['G'] == 0 then 
        return 0
    end

    if not self.nucleotideCounts[c] or self.nucleotideCounts[c] == 0 then
        error("Invalid Nucleotide")
    end
    return self.nucleotideCounts[c]
end

return DNA
