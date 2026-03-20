local atbash_cipher = require('lua/atbash-cipher/atbash-cipher')

local phrase = 'mindblowingly'
local expected = 'nrmwy oldrm tob'
local result = atbash_cipher.encode(phrase)
print(expected)


phrase = 'zmlyh gzxov rhlug vmzhg vkkrm thglm v'
expected = 'anobstacleisoftenasteppingstone'
result = atbash_cipher.decode(phrase)
print(result)
