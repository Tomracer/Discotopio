--A% = full week day, %B = name of month, %C = year, %D = date, %E = nothing?, %F = date with full year, %G = fully yea e.g 2021, %H hour, %I = minute

local date = {}
local wday = os.date("%A")
local month = os.date("%B")
local s_date = os.date("%D")


--[[function date.date()
    --Wochentag + Monat + Uhrzeit + Jahr 
    Wochentag = weekdays[wday]
    Monat = months[month]
    Uhrzeit = (os.date("%H:%I"))
    Jahr = tostring(os.date("%G"))
    if Wochentag and Monat and Uhrzeit and Jahr then
        Datum = 
]]



function date.get_weekday(weekdays)
    if weekdays[wday] then
        print(weekdays[wday])
        Tag = weekdays[wday]
        return Tag
    else
        print("Something went wrong")
        return "Something went wrong"
    end
end

function date.get_month(months)
    if months[month] then
        print(months[month])
        Monat = months[month]
        return Monat
    else
        print("Something went wrong")
        return "Something went wrong"
    end
end

function date.get_embed()
    embed = {embed = {title = 'Help Commands',description = "Whatever"}}
    return embed
end


return date