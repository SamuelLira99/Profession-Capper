local addonName, addonTable = ...;

if not addonTable.recipes or not addonTable.recipes.tailoring then
    print("|cff" .. addonTable.chat_frame_error_color .. '[Profession Capper] Error loading Engineering module|r');
    return
end

local engineeringRecipes = addonTable.recipes.engineering;

addonTable.professions = addonTable.professions or {};

addonTable.professions.engineering = {

    {
        min = 1,
        max = 20,

        recipes = {
            engineeringRecipes.roughBlastingPowder
        }
    },

    {
        min = 21,
        max = 30,

        recipes = {
            engineeringRecipes.roughDynamite,
            engineeringRecipes.roughBlastingPowder

        }
    },

    {
        min = 31,
        max = 49,

        recipes = {
            engineeringRecipes.handfulOfCopperBolts,
            engineeringRecipes.roughDynamite

        }
    },

    {
        min = 50,
        max = 50,

        recipes = {
            engineeringRecipes.arclightSpanner,
            engineeringRecipes.copperTube

        }
    },

    {
        min = 51,
        max = 74,

        recipes = {
            engineeringRecipes.copperTube,
            engineeringRecipes.arclightSpanner

        }
    },

    {
        min = 75,
        max = 84,

        recipes = {
            engineeringRecipes.coarseBlastingPowder,
            engineeringRecipes.copperTube,
            engineeringRecipes.arclightSpanner

        }
    },

    {
        min = 85,
        max = 89,

        recipes = {
            engineeringRecipes.coarseDynamite,
            engineeringRecipes.coarseBlastingPowder,
            engineeringRecipes.copperTube

        }
    },

    {
        min = 90,
        max = 109,

        recipes = {
            engineeringRecipes.silverContact,
            engineeringRecipes.copperModulator

        }
    },

    {
        min = 110,
        max = 124,

        recipes = {
            engineeringRecipes.bronzeTube,
            engineeringRecipes.largeCopperBomb,
            engineeringRecipes.silverContact

        }
    },

    {
        min = 125,
        max = 134,

        recipes = {
            engineeringRecipes.heavyBlastingPowder
        }
    },

    {
        min = 135,
        max = 144,

        recipes = {
            engineeringRecipes.whirringBronzeGizmo,
            engineeringRecipes.heavyBlastingPowder

        }
    },

    {
        min = 145,
        max = 149,

        recipes = {
            engineeringRecipes.whirringBronzeGizmo
        }
    },

    {
        min = 150,
        max = 154,

        recipes = {
            engineeringRecipes.bronzeFramework
        }
    },

    {
        min = 155,
        max = 174,

        recipes = {
            engineeringRecipes.explosiveSheep,
            engineeringRecipes.goldPowerCore,
            engineeringRecipes.ironStrut

        }
    },

    {
        min = 175,
        max = 175,

        recipes = {
            engineeringRecipes.gyromaticMicroAdjustor,
            engineeringRecipes.solidBlastingPowder

        }
    },

    {
        min = 176,
        max = 194,

        recipes = {
            engineeringRecipes.solidBlastingPowder,
            engineeringRecipes.gyromaticMicroAdjustor

        }
    },

    {
        min = 195,
        max = 199,

        recipes = {
            engineeringRecipes.mithrilTube
        }
    },

    {
        min = 200,
        max = 209,

        recipes = {
            engineeringRecipes.unstableTrigger,
            engineeringRecipes.mithrilTube

        }
    },

    {
        min = 210,
        max = 224,

        recipes = {
            engineeringRecipes.hiImpactMithrilSlugs
        }
    },

    {
        min = 225,
        max = 234,

        recipes = {
            engineeringRecipes.mithrilCasing
        }
    },

    {
        min = 235,
        max = 244,

        recipes = {
            engineeringRecipes.hiExplosiveBomb,
            engineeringRecipes.mithrilCasing

        }
    },

    {
        min = 245,
        max = 149,

        recipes = {
            engineeringRecipes.mithrilGyroShot,
            engineeringRecipes.hiExplosiveBomb

        }
    },

    {
        min = 250,
        max = 259,

        recipes = {
            engineeringRecipes.denseBlastingPowder,
            engineeringRecipes.mithrilGyroShot

        }
    },

    {
        min = 260,
        max = 279,

        recipes = {
            engineeringRecipes.thoriumWidget
        }
    },

    {
        min = 280,
        max = 284,

        recipes = {
            engineeringRecipes.thoriumTube
        }
    },

    {
        min = 285,
        max = 299,

        recipes = {
            engineeringRecipes.thoriumShells
        }
    },

    {
        min = 300,
        max = 304,

        recipes = {
            engineeringRecipes.handfulOfFelIronBolts,
            engineeringRecipes.elementalBlastingPowder,
            engineeringRecipes.thoriumShells

        }
    },

    {
        min = 305,
        max = 309,

        recipes = {
            engineeringRecipes.handfulOfFelIronBolts,
            engineeringRecipes.elementalBlastingPowder

        }
    },

    {
        min = 310,
        max = 319,

        recipes = {
            engineeringRecipes.felIronCasing,
            engineeringRecipes.elementalBlastingPowder

        }
    },

    {
        min = 320,
        max = 324,

        recipes = {
            engineeringRecipes.felIronBomb,
            engineeringRecipes.felIronMusket

        }
    },

    {
        min = 325,
        max = 334,

        recipes = {
            engineeringRecipes.adamantiteGrenade
        }
    },

    {
        min = 335,
        max = 339,

        recipes = {
            engineeringRecipes.whiteSmokeFlare,
            engineeringRecipes.adamantiteGrenade

        }
    },

    {
        min = 340,
        max = 349,

        recipes = {
            engineeringRecipes.felsteelStabilizer,
            engineeringRecipes.whiteSmokeFlare

        }
    },

    {
        min = 350,
        max = 369,

        recipes = {
            engineeringRecipes.handfulOfCobaltBolts
        }
    },

    {
        min = 370,
        max = 374,

        recipes = {
            engineeringRecipes.volatileBlastingTrigger
        }
    },

    {
        min = 375,
        max = 384,

        recipes = {
            engineeringRecipes.overchargedCapacitor,
            engineeringRecipes.hammerPick,
            engineeringRecipes.bladedPickaxe

        }
    },

    {
        min = 385,
        max = 389,

        recipes = {
            engineeringRecipes.explosiveDecoy
        }
    },

    {
        min = 390,
        max = 399,

        recipes = {
            engineeringRecipes.froststeelTube
        }
    },

    {
        min = 400,
        max = 404,

        recipes = {
            engineeringRecipes.diamondCutRefractorScope
        }
    },

    {
        min = 405,
        max = 409,

        recipes = {
            engineeringRecipes.boxOfBombs
        }
    },

    {
        min = 410,
        max = 414,

        recipes = {
            engineeringRecipes.mammothCutters
        }
    },

    {
        min = 415,
        max = 419,

        recipes = {
            engineeringRecipes.saroniteRazorheads
        }
    },

    {
        min = 420,
        max = 429,

        recipes = {
            engineeringRecipes.mechanizedSnowGogglesCloth,
            engineeringRecipes.mechanizedSnowGogglesLeather,
            engineeringRecipes.mechanizedSnowGogglesMail,
            engineeringRecipes.mechanizedSnowGogglesPlate,

        }
    },

    {
        min = 430,
        max = 434,

        recipes = {
            engineeringRecipes.noiseMachine,
            engineeringRecipes.sonicBooster

        }
    },

    {
        min = 435,
        max = 449,

        recipes = {
            engineeringRecipes.gnomishArmyKnife
        }
    }
};

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Engineering module|r');