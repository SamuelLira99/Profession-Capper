local addonName, addonTable = ...;

if not addonTable.recipes or not addonTable.recipes.firstAid then
    print("|cff" .. addonTable.chat_frame_error_color .. '[Profession Capper] Error loading First Aid module|r');
    return
end

local firstAidRecipes = addonTable.recipes.firstAid;

addonTable.professions = addonTable.professions or {};

addonTable.professions.firstaid = {

    {
        min = 1,
        max = 39,

        recipes = {
            firstAidRecipes.linenBandage
        }
    },

    {
        min = 40,
        max = 79,

        recipes = {
            firstAidRecipes.heavyLinenBandage
        }
    },

    {
        min = 80,
        max = 99,

        recipes = {
            firstAidRecipes.woolBandage,
            firstAidRecipes.heavyLinenBandage,
            firstAidRecipes.antiVenom

        }
    },

    {
        min = 100,
        max = 114,

        recipes = {
            firstAidRecipes.woolBandage,
            firstAidRecipes.antiVenom

        }
    },

    {
        min = 115,
        max = 129,

        recipes = {
            firstAidRecipes.heavyWoolBandage
        }
    },

    {
        min = 130,
        max = 149,

        recipes = {
            firstAidRecipes.heavyWoolBandage,
            firstAidRecipes.strongAntiVenom

        }
    },

    {
        min = 150,
        max = 179,

        recipes = {
            firstAidRecipes.silkBandage,
            firstAidRecipes.heavyWoolBandage,
            firstAidRecipes.strongAntiVenom

        }
    },

    {
        min = 180,
        max = 209,

        recipes = {
            firstAidRecipes.heavySilkBandage
        }
    },

    {
        min = 210,
        max = 239,

        recipes = {
            firstAidRecipes.mageweaveBandage,
            firstAidRecipes.heavySilkBandage

        }
    },

    {
        min = 240,
        max = 259,

        recipes = {
            firstAidRecipes.heavyMageweaveBandage
        }
    },

    {
        min = 260,
        max = 289,

        recipes = {
            firstAidRecipes.runeclothBandage,
            firstAidRecipes.heavyMageweaveBandage

        }
    },

    {
        min = 290,
        max = 299,

        recipes = {
            firstAidRecipes.heavyRuneclothBandage,
            firstAidRecipes.heavyMageweaveBandage

        }
    },

    {
        min = 300,
        max = 329,

        recipes = {
            firstAidRecipes.netherweaveBandage,
            firstAidRecipes.heavyRuneclothBandage,
            firstAidRecipes.powerfulAntiVenom

        }
    },

    {
        min = 330,
        max = 349,

        recipes = {
            firstAidRecipes.heavyNetherweaveBandage,
            firstAidRecipes.heavyRuneclothBandage,
            firstAidRecipes.powerfulAntiVenom

        }
    },

    {
        min = 350,
        max = 374,

        recipes = {
            firstAidRecipes.frostweaveBandage,
            firstAidRecipes.heavyNetherweaveBandage

        }
    },

    {
        min = 375,
        max = 399,

        recipes = {
            firstAidRecipes.frostweaveBandage
        }
    },

    {
        min = 400,
        max = 449,

        recipes = {
            firstAidRecipes.heavyFrostweaveBandage
        }
    }
};

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded First Aid module|r');