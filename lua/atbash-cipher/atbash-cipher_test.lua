local atbash_cipher = require('lua/atbash-cipher/atbash-cipher')

local phrase = 'gvhgr mt123 gvhgr mt'
local result = atbash_cipher.decode(phrase)
print(result)
