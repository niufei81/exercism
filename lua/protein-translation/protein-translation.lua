--[[
| AUG                | Methionine    |
| UUU, UUC           | Phenylalanine |
| UUA, UUG           | Leucine       |
| UCU, UCC, UCA, UCG | Serine        |
| UAU, UAC           | Tyrosine      |
| UGU, UGC           | Cysteine      |
| UGG                | Tryptophan    |
| UAA, UAG, UGA      | STOP          |
--]]
local codons = {
    AUG = "Methionine",
    UUU = "Phenylalanine",
    UUC = "Phenylalanine",
    UUA = "Leucine",
    UUG = "Leucine",
    UCU = "Serine",
    UCC = "Serine",
    UCA = "Serine",
    UCG = "Serine",
    UAU = "Tyrosine",
    UAC = "Tyrosine",
    UGU = "Cysteine",
    UGC = "Cysteine",
    UGG = "Tryptophan",
    UAA = "STOP",
    UAG = "STOP",
    UGA = "STOP"
}

local function proteins(strand)
    local aminos = {}
    for codon in strand:gmatch("%u%u%u") do
        if not codons[codon] then
            error("Invalid codon")
        end
        if codons[codon] == "STOP" then
            break
        end
        table.insert(aminos, codons[codon])
    end
    return aminos
end

return { proteins = proteins }
