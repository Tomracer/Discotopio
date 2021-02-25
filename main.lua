local main = require("date")
local discordia = require('discordia')
local client = discordia.Client()
--main.hello() --> "Hello world!"
local weekdays = {["Monday"] = "Montag", ["Wednesday"] = "Mittwoch", ["Thursday"] = "Donnerstag", ["Tuesday"] = "Dienstag", ["Friday"] = "Freitag", ["Saturday"] = "Samstag", ["Sunday"] = "Sonntag"}
local months = {["January"]="Januar", ["February"]="Februar", ["March"]="März", ["April"]="April", ["May"]="Mai", ["June"]="Juni", ["July"]="Juli", ["August"]="August", ["September"]="September", ["October"]="Oktober", ["November"]="November", ["December"]="Dezember",}
local commands = {["!month"]=main.get_month(months, month), ["!tag"]=main.get_weekday(weekdays, day), ["!embed"]=main.get_embed(), ["!ping"]="Pong"}
--local commands = {["!embed"]=main.embed(message)}

client:on("messageCreate", function(message)
    message_lower = message.content:lower()
    if message.author.bot then 
        --print(message.author.bot)
    return
    elseif commands[message_lower] then
        print(message_lower)
        message.channel:send(commands[message_lower])
    else
        message.channel:send("No such command exists")
        print(message_lower)
    end
end)


client:run("Bot NjYxMjMwMTUzNjQ0Mzc2MDg0.XgoYkQ.4TAoCdIeKvX3Yibit8MNFaW8bOA")
