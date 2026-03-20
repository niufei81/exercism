local BankAccount = {}

function BankAccount:new()
    local account = {
        _active=false,
        __balance = 0
    }
    self.__index = self
    setmetatable(account, self)
    return account
end

function BankAccount:open()
    if self._active then
        error("Account already open")
    end
    self._active = true
    self._balance = 0
end

function BankAccount:close()
    if not self._active then
        error("Account not open")
    end
    self._active = false
    self._balance = 0
end

function BankAccount:balance()
    if not self._active then
        error("Account not open")
    end
    return self._balance
end

function BankAccount:deposit(num)
    if not self._active then
        error("Account not open")
    end
    if not num or num < 0 then
        error("Number can't less than 0")
    end
    self._balance = self._balance + num
    return self._balance
end

function BankAccount:withdraw(num)
    if not self._active then
        error("Account not open")
    end
    if not num or num < 0 then
        error("Number can't less than 0")
    end
    if self._balance - num < 0 then
        error("Not enough money")
    end
    self._balance = self._balance - num
    return self._balance
end


return BankAccount
