--------------------------------------------------------------------------------
-- Module Declaration
--

local mod = BigWigs:NewBoss("Magmaw", "Blackwing Descent")
if not mod then return end
mod:RegisterEnableMob(41570)
mod.toggleOptions = {"slump", 79011, 89773, 78006, {94679, "FLASHSHAKE", "WHISPER"}, "proximity", 91931, "inferno", "bosskill"}
mod.optionHeaders = {
	slump = "normal",
	inferno = "heroic",
	bosskill = "general",
}

--------------------------------------------------------------------------------
-- Locals
--

local lavaSpew = 0
local inferno, pillarOfFlame = GetSpellInfo(92191), GetSpellInfo(78006)

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.inferno = inferno
	L.inferno_desc = "Summons Blazing Bone Construct."

	L.pillar_of_flame_cd = "~Pillar of Flame"

	L.blazing_message = "Add incoming!"
	L.blazing_bar = "Next skeleton"

	L.slump = "Slump (Rodeo)"
	L.slump_desc = "Warn for when Magmaw slumps forward and exposes himself, allowing the riding rodeo to start."

	L.slump_bar = "Next rodeo"
	L.slump_message = "Yeehaw, ride on!"
	L.slump_trigger = "%s slumps forward, exposing his pincers!"

	L.infection_message = "You are infected!"

	L.expose_trigger = "head"
	L.expose_message = "Head exposed!"
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:OnBossEnable()
	--heroic
	self:Log("SPELL_SUMMON", "BlazingInferno", 92191)

	--normal
	self:Log("SPELL_AURA_APPLIED", "Infection", 94679, 78097, 78941, 91913, 94678)
	self:Log("SPELL_AURA_REMOVED", "InfectionRemoved", 94679, 78097, 78941, 91913, 94678)
	self:Log("SPELL_AURA_APPLIED", "PillarOfFlame", 78006)
	self:Log("SPELL_AURA_APPLIED", "Mangle", 89773, 91912, 94616, 94617) -- check IDs
	self:Log("SPELL_CAST_SUCCESS", "LavaSpew", 91931)
	self:Emote("Slump", L["slump_trigger"])
	self:Emote("Vulnerability", L["expose_trigger"])

	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")

	self:Death("Win", 41570)
end

function mod:OnEngage(diff)
	if diff > 2 then
		self:Bar("inferno", L["blazing_bar"], 20, 92191)
	end
	self:Bar("slump", L["slump_bar"], 100, 36702)
	self:Bar(78006, pillarOfFlame, 30, 78006)
	lavaSpew = 0
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Vulnerability()
	self:Message(79011, L["expose_message"], "Positive", 79011)
	self:Bar(79011, L["expose_message"], 30, 79011)
	-- XXX 10 sec after vulnerability ends, might not be accurate
	self:Bar(78006, L["pillar_of_flame_cd"], 40, 78006)
end

function mod:LavaSpew(_, spellId, _, _, spellName)
	if (GetTime() - lavaSpew) > 6 then
		self:Message(91931, spellName, "Important", spellId)
		self:Bar(91931, spellName, 26, spellId)
	end
	lavaSpew = GetTime()
end

function mod:BlazingInferno(_, spellId)
	self:Message("inferno", L["blazing_message"], "Urgent", spellId, "Info")
	self:Bar("inferno", L["blazing_bar"], 35, spellId)
end

function mod:PillarOfFlame(_, spellId, _, _, spellName)
	self:Message(78006, spellName, "Urgent", spellId, "Alert")
	self:Bar(78006, L["pillar_of_flame_cd"], 32, spellId)
end

function mod:Infection(player, spellId, _, _, spellName)
	if UnitIsUnit(player, "player") then
		self:Message(94679, L["infection_message"], "Important", spellId, "Alarm")
		self:FlashShake(94679)
		self:OpenProximity(8)
	else
		self:Whisper(94679, player, L["infection_message"], true)
	end
end

function mod:InfectionRemoved(player)
	if not UnitIsUnit(player, "player") then return end
	self:CloseProximity()
end

function mod:Slump()
	self:SendMessage("BigWigs_StopBar", self,  L["pillar_of_flame_cd"])
	self:Bar("slump", L["slump_bar"], 95, 36702)
	self:Message("slump", L["slump_message"], "Positive", 36702, "Info")
end

function mod:Mangle(_, spellId, _, _, spellName)
	self:Bar(89773, spellName, 30, spellId)
end

