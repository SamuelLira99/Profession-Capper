local addonName, addonTable = ...;

if not addonTable.recipes or not addonTable.recipes.tailoring then
    print("|cff" .. addonTable.chat_frame_error_color .. '[Profession Capper] Error loading Tailoring module|r');
    return
end

local tailoringRecipes = addonTable.recipes.tailoring;

addonTable.professions = addonTable.professions or {};

addonTable.professions.tailoring = {

    {
        min = 1,
        max = 44,

        recipes = {
            tailoringRecipes.boltOfLinenCloth
        }
    },

    {
        min = 45,
        max = 49,
    
        recipes = {
            tailoringRecipes.linenBelt
        }
    },
    
    {
        min = 50,
        max = 69,
    
        recipes = {
            tailoringRecipes.heavyLinenGloves
        }
    },
    
    {
        min = 70,
        max = 74,
    
        recipes = {
            tailoringRecipes.reinforcedLinenCape
        }
    },

    {
        min = 75,
        max = 99,

        recipes = {
            tailoringRecipes.boltOfWoolenCloth
        }
    },

    {
        min = 100,
        max = 104,

        recipes = {
            tailoringRecipes.simpleKilt,
            tailoringRecipes.woolenBag
        }
    },

    {
        min = 105,
        max = 109,

        recipes = {
            tailoringRecipes.simpleKilt
        }
    },

    {
        min = 110,
        max = 124,

        recipes = {
            tailoringRecipes.doubleStitchedWoolenShoulders
        }
    },

    {
        min = 125,
        max = 144,

        recipes = {
            tailoringRecipes.boltOfSilkCloth
        }
    },

    {
        min = 145,
        max = 159,

        recipes = {
            tailoringRecipes.azureSilkHood,
            tailoringRecipes.doubleStitchedWoolenShoulders
        }
    },

    {
        min = 160,
        max = 169,

        recipes = {
            tailoringRecipes.silkHeadband
        }
    },

    {
        min = 170,
        max = 174,

        recipes = {
            tailoringRecipes.formalWhiteShirt
        }
    },

    {
        min = 175,
        max = 184,

        recipes = {
            tailoringRecipes.boltOfMageweave
        }
    },

    {
        min = 185,
        max = 204,

        recipes = {
            tailoringRecipes.crimsonSilkVest
        }
    },

    {
        min = 205,
        max = 214,

        recipes = {
            tailoringRecipes.crimsonSilkPantaloons
        }
    },

    {
        min = 215,
        max = 219,

        recipes = {
            tailoringRecipes.blackMageweaveLeggings,
            tailoringRecipes.blackMageweaveVest,
            tailoringRecipes.crimsonSilkPantaloons
        }
    },

    {
        min = 220,
        max = 229,

        recipes = {
            tailoringRecipes.blackMageweaveGloves
        }
    },

    {
        min = 230,
        max = 249,

        recipes = {
            tailoringRecipes.blackMageweaveHeadband,
            tailoringRecipes.blackMageweaveShoulders
        }
    },

    {
        min = 250,
        max = 259,

        recipes = {
            tailoringRecipes.boltOfRunecloth
        }
    },

    {
        min = 260,
        max = 279,

        recipes = {
            tailoringRecipes.runeclothBelt
        }
    },

    {
        min = 280,
        max = 294,

        recipes = {
            tailoringRecipes.runeclothGloves
        }
    },

    {
        min = 295,
        max = 299,

        recipes = {
            tailoringRecipes.runeclothHeadband
        }
    },

    {
        min = 300,
        max = 324,

        recipes = {
            tailoringRecipes.boltOfNetherweave
        }
    },

    {
        min = 325,
        max = 334,

        recipes = {
            tailoringRecipes.boltOfImbuedNetherweave
        }
    },

    {
        min = 335,
        max = 344,

        recipes = {
            tailoringRecipes.netherweaveBoots
        }
    },

    {
        min = 345,
        max = 349,

        recipes = {
            tailoringRecipes.netherweaveTunic
        }
    },
    
    {
        min = 350,
        max = 374,
    
        recipes = {
            tailoringRecipes.boltOfFrostweave
        }
    },
    
    {
        min = 375,
        max = 379,
    
        recipes = {
            tailoringRecipes.frostwovenBelt
        }
    },
    
    {
        min = 380,
        max = 384,
    
        recipes = {
            tailoringRecipes.frostwovenBoots
        }
    },
    
    {
        min = 385,
        max = 394,
    
        recipes = {
            tailoringRecipes.frostwovenCowl
        }
    },
    
    {
        min = 395,
        max = 399,
    
        recipes = {
            tailoringRecipes.duskweaveBelt
        }
    },
    
    {
        min = 400,
        max = 404,
    
        recipes = {
            tailoringRecipes.boltOfImbuedFrostweave
        }
    },

    {
        min = 405,
        max = 409,

        recipes = {
            tailoringRecipes.duskweaveWristwraps
        }
    },

    {
        min = 410,
        max = 414,

        recipes = {
            tailoringRecipes.duskweaveGloves
        }
    },

    {
        min = 415,
        max = 424,

        recipes = {
            tailoringRecipes.duskweaveBoots,
            tailoringRecipes.duskweaveShoulders
        }
    },

    {
        min = 425,
        max = 449,

        recipes = {
            tailoringRecipes.frostweaveBag
        }
    }

}

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Tailoring module|r');