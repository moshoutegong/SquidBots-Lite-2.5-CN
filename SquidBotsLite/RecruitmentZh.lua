local CLASS_CN = {
	["Barbarian"] = "野蛮人", ["Witch Doctor"] = "巫医", ["Felsworn"] = "恶魔猎手", ["Witch Hunter"] = "猎魔人",
	["Stormbringer"] = "风暴使者", ["Knight of Xoroth"] = "克索诺斯骑士", ["Guardian"] = "守护者",
	["Templar"] = "圣殿骑士", ["Bloodmage"] = "血法师", ["Ranger"] = "游侠", ["Chronomancer"] = "时光术师",
	["Necromancer"] = "亡灵巫师", ["Pyromancer"] = "炎术师", ["Cultist"] = "教徒", ["Starcaller"] = "唤星者",
	["Sun Cleric"] = "太阳祭司", ["Tinker"] = "工匠", ["Venomancer"] = "剧毒术士", ["Reaper"] = "死神",
	["Primalist"] = "仪祭师", ["Runemaster"] = "符文大师", ["Son of Arugal"] = "阿鲁加尔之子",
}
-- Translate chat presentation only; addon event parsing receives the original.
local function TranslateOffer(message)
 if type(message)~="string" then return message end
 if not (message:find("[Ll][Ee][Vv][Ee][Ll]%s*[:：]?%s*%d+") or message:find("等级%s*%d+")) then return message end
 local lower=message:lower()
 if not (lower:find("invite",1,true) or lower:find("ready",1,true) or lower:find("service",1,true) or lower:find("available",1,true)) then return message end
 local keys={};for name in pairs(CLASS_CN) do keys[#keys+1]=name end
 table.sort(keys,function(x,y)return #x>#y end)
 local found=false
 for _,name in ipairs(keys) do
  if message:find(name,1,true) then message=message:gsub(name,CLASS_CN[name]);found=true end
 end
 if not found then return message end
 message=message:gsub("[Ll][Ee][Vv][Ee][Ll]%s*[:：]?%s*(%d+)","等级 %1")
 local phrases={
  {"[Mm]ana full","法力充足"},{"[Bb]andages packed","绷带已备好"},
  {"[Ii]nvite me!","请邀请我！"},{"[Ii]nvite me","请邀请我"},
  {"[Rr]eady to go!","准备就绪！"},{"[Rr]eady to go","准备就绪"},
  {"[Aa]t your service","随时为你效劳"},{"[Hh]ealer","治疗"},
  {"[Tt]ank","坦克"},{"[Dd][Pp][Ss]","输出"},
  {"[Dd]amage dealer","输出"},{"[Ll]ooking for a group","正在寻找队伍"}}
 for _,pair in ipairs(phrases) do message=message:gsub(pair[1],pair[2]) end
 return message
end
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER",function(_,_,message,...)
 if not SquidBotsLiteDB or SquidBotsLiteDB.lang~="zh" then return false end
 local shown=TranslateOffer(message)
 if shown~=message then return false,shown,... end
 return false
end)
