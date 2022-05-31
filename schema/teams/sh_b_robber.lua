TEAM_ROBBER = impulse.Teams.Define({
	name = "Robber",
	color = Color(212, 35, 35),
	description = [[Rob stuff]],
	loadout = {"impulse_hands", "weapon_physgun", "gmod_tool"},
	salary = 300,
	model = "models/player/arctic.mdl",
	handModel = "models/weapons/c_arms_combine.mdl",
	limit = 10,
	xp = 10,
	cp = false,
	donatorOnly = false -- set this to true for donatorOnly
})