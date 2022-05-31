TEAM_COP = impulse.Teams.Define({
	name = "Cop",
	color = Color(212, 35, 35),
	description = [[Catch robbers]],
	loadout = {"impulse_hands", "weapon_physgun", "gmod_tool"},
	salary = 300,
	model = "models/player/police.mdl",
	handModel = "models/weapons/c_arms_combine.mdl",
    percentLimit = true,
	limit = 0.2,
	xp = 50,
	cp = true,
    blockNameChange = true,
    doorGroup = {1},

    quiz = {
        {
            question = "Are robbers bad?",
            answers = {
                {"Yes", true},
                {"No", false}
            }
        },
        {
            question = "What should you do if you see a robber?",
            answers = {
                {"Shoot em", false},
                {"Let them go", false},
                {"Arrest them", true}
            }
        }
    },

    classes = {
        {
            name = "Patrol",
            description = "Patrols n stuff",
            model = "models/player/police.mdl",
            skin = 0,
            xp = 50,
            armour = 100,
            itemsAdd = {
                {class = "wep_pistol", amount = 1}
            }
        },
        {
            name = "SWAT",
            description = "Shoot n stuff",
            model = "models/player/combine_soldier.mdl",
            skin = 0,
            xp = 100,
            armour = 500,
            percentLimit = true,
            limit = 0.1
        },
        {
            name = "SWAT+",
            description = "Shoot n stuff",
            model = "models/player/combine_soldier.mdl",
            skin = 0,
            xp = 100,
            armour = 1000,
            percentLimit = true,
            limit = 0.1,
            noMenu = true -- hide from menu, player can only become this if your code sets them to it
        }
    },

    ranks = {
        {
            name = "Recruit",
            description = "?",
            xp = 50,
            onBecome = function(ply, rank)
                -- you can run code here if you want, works with classes too
                print(ply)
            end
        },
        {
            name = "Officer",
            description = "?",
            xp = 80,
            limit = 3
        }
    }
})

CLASS_PATROL = 1
CLASS_SWAT = 2
CLASS_SWATPLUS = 3

RANK_RECRUIT = 1
RANK_OFFICER = 2