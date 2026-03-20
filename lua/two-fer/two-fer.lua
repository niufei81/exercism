local TwoFer = {}

function TwoFer.two_fer(name)
    if not name or name == "" then
        name = "you"
    end
    return "One for " .. name .. ", one for me."
end

return TwoFer
