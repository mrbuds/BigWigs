local L = BigWigs:NewBossLocale("Eranog", "zhTW")
if not L then return end
if L then
	L.custom_on_nameplate_fixate = "鎖定名條圖示"
	L.custom_on_nameplate_fixate_desc = "在獵殺指令鎖定你的塔拉賽克名條上顯示追擊圖示。\n\n需要開啟敵方名條，並使用支援此功能的名條插件（如KuiNameplates、Plater）。"

	L.molten_cleave = "正面順劈"
	L.incinerating_roar = "咆哮"
	L.molten_spikes = "尖刺"
	L.collapsing_army = "烈焰大軍"
	L.greater_flamerift = "大型增援"
	L.leaping_flames = "跳躍火焰"
end

L = BigWigs:NewBossLocale("Terros", "zhTW")
if L then
	L.rock_blast = "分攤"
	L.resonating_annihilation = "清場"
	L.awakened_earth = "地刺"
	L.shattering_impact = "猛擊"
	L.concussive_slam = "射線"
	L.infused_fallout = "落塵"
end

L = BigWigs:NewBossLocale("The Primal Council", "zhTW")
if L then
	L.primal_blizzard = "暴風雪" -- Primal Blizzard
	L.earthen_pillars = "大地之柱" -- Earthen Pillars
	L.meteor_axes = "大圈分攤" -- Meteor Axes
	L.meteor_axe = "大圈分攤" -- Singular
	L.meteor_axes_melee = "近戰分攤"
	L.meteor_axes_ranged = "遠程分攤"
	L.conductive_marks = "導電印記" -- Conductive Marks
	L.conductive_mark = "導電印記" -- Singular

	L.custom_on_stop_timers = "總是顯示計時器"
	L.custom_on_stop_timers_desc = "啟用此選項後，導電印記的計時條會保持顯示。"
end

L = BigWigs:NewBossLocale("Sennarth, The Cold Breath", "zhTW")
if L then
	L.ascend = "上升"
	L.ascend_desc = "賽娜斯朝巢穴的冰峰頂部移動。"
	L.chilling_blast = "凜冽衝擊"
	L.freezing_breath = "大怪吐息"
	L.webs = "蛛網"
	L.web = "蛛網"
	L.gossamer_burst = "拉人"
	L.repelling_burst = "擊退"
end

L = BigWigs:NewBossLocale("Dathea, Ascended", "zhTW")
if L then
	L.conductive_marks = "導電印記"
	L.conductive_mark = "導電印記"
	L.raging_burst = "狂怒風暴"
	L.cyclone = "拉近"
	L.crosswinds = "移動風暴"
end

L = BigWigs:NewBossLocale("Kurog Grimtotem", "zhTW")
if L then
	-- -- Types
	L.damage = "傷害技能"
	L.damage_desc = "當我們不知道首領獲得什麼元素能力時，顯示傷害技能的計時器（岩漿衝擊、刺骨之寒、包覆之土、閃電爆擊）。"
	L.damage_bartext = "[傷害] %s" -- {Spell} [Dmg]

	L.avoid = "躲避技能"
	L.avoid_desc = "當我們不知道首領獲得什麼元素能力時，顯示躲避技能的計時器（熔火割裂、嚴寒洪流、爆發岩床、電擊爆發）。"
	L.avoid_bartext = "[躲避] %s" -- {Spell} [Avoid]

	L.ultimate = "終結技能"
	L.ultimate_desc = "當我們不知道首領獲得什麼元素能力時，顯示終結技能的計時器（灼熱屠殺、絕對零度、震地破裂、雷擊）。"
	L.ultimate_bartext = "[終結] %s" -- {Spell} [Ult]

	-- -- Fire
	L.magma_burst = "熔岩池"
	L.molten_rupture = "熔岩波"
	L.searing_carnage = "火圈跳舞"

	-- -- Frost
	L.biting_chill = "刺骨之寒"
	L.frigid_torrent = "冰球跳舞"
	L.absolute_zero = "大圈分攤"
	L.absolute_zero_melee = "近戰分攤"
	L.absolute_zero_ranged = "遠程分攤"

	-- -- Earth
	L.enveloping_earth = "吸收盾"
	L.erupting_bedrock = "地震跳舞"

	-- -- Storm
	L.lightning_crash = "閃電暴擊"
	L.thundering_strike = "接圈"

	-- -- General
	L.primal_attunement = "軟狂暴"

	-- -- Stage 2
	-- L.violent_upheaval = "Pillars"
end

L = BigWigs:NewBossLocale("Broodkeeper Diurna", "zhTW")
if L then
	L.eggs_remaining = "還剩 %d 個蛋！"
	L.broodkeepers_bond = "剩餘龍蛋"
	L.greatstaff_of_the_broodkeeper = "巨杖"
	L.greatstaffs_wrath = "射線"
	L.clutchwatchers_rage = "狂怒"
	L.rapid_incubation = "注入龍蛋"
	L.icy_shroud = "減速吸收盾"
	L.broodkeepers_fury = "狂怒"
	L.frozen_shroud = "定身吸收盾"
end

L = BigWigs:NewBossLocale("Raszageth the Storm-Eater", "zhTW")
if L then
	L.lighting_devastation_trigger = "深吸" -- Raszageth takes a deep breath...
end

L = BigWigs:NewBossLocale("Vault of the Incarnates Trash", "zhTW")
if L then

end
