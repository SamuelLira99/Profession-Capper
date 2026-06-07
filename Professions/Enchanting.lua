local addonName, addonTable = ...;

if not addonTable.recipes or not addonTable.recipes.tailoring then
    print("|cff" .. addonTable.chat_frame_error_color .. '[Profession Capper] Error loading Enchanting module|r');
    return
end

local enchantingRecipes = addonTable.recipes.enchanting;

addonTable.professions = addonTable.professions or {};

addonTable.professions.enchanting = {

    {
        min = 1,
        max = 1,

        recipes = {
            enchantingRecipes.runedCopperRod
        }
    },

    {
        min = 2,
        max = 9,

        recipes = {
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.runedCopperRod
        }
    },

    {
        min = 10,
        max = 14,

        recipes = {
            enchantingRecipes.enchantBracerMinorHealth
        }
    },

    {
        min = 15,
        max = 19,

        recipes = {
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.enchantChestMinorHealth
        }
    },

    {
        min = 20,
        max = 59,

        recipes = {
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.enchantChestMinorHealth,
            enchantingRecipes.enchantChestMinorMana
        }
    },

    {
        min = 60,
        max = 89,

        recipes = {
            enchantingRecipes.enchantChestMinorMana,
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.enchantChestMinorHealth
        }
    },

    {
        min = 90,
        max = 99,

        recipes = {
            enchantingRecipes.enchantChestMinorMana,
            enchantingRecipes.enchantBracerMinorStamina
        }
    },

    {
        min = 100,
        max = 100,

        recipes = {
            enchantingRecipes.runedSilverRod,
            enchantingRecipes.enchantBracerMinorSpirit,
            enchantingRecipes.enchantBracerMinorStamina
        }
    },

    {
        min = 101,
        max = 109,

        recipes = {
            enchantingRecipes.enchantBracerMinorSpirit,
            enchantingRecipes.enchantBracerMinorStamina,
            enchantingRecipes.runedSilverRod
        }
    },

    {
        min = 110,
        max = 134,

        recipes = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerMinorSpirit,
            enchantingRecipes.enchantBracerMinorStrength,
            enchantingRecipes.runedSilverRod
        }
    },

    {
        min = 135,
        max = 139,

        recipes = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedSilverRod
        }
    },

    {
        min = 140,
        max = 149,

        recipes = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedSilverRod
        }
    },

    {
        min = 150,
        max = 154,

        recipes = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina
        }
    },

    {
        min = 155,
        max = 155,

        recipes = {
            enchantingRecipes.runedGoldenRod,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina
        }
    },

    {
        min = 156,
        max = 164,

        recipes = {
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedGoldenRod
        }
    },

    {
        min = 165,
        max = 179,

        recipes = {
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedGoldenRod
        }
    },

    {
        min = 180,
        max = 184,

        recipes = {
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedGoldenRod
        }
    },

    {
        min = 185,
        max = 199,

        recipes = {
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantChestGreaterHealth
        }
    },

    {
        min = 200,
        max = 200,

        recipes = {
            enchantingRecipes.runedTruesilverRod,
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerLesserStrength
        }
    },

    {
        min = 201,
        max = 204,

        recipes = {
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.runedTruesilverRod
        }
    },

    {
        min = 205,
        max = 219,

        recipes = {
            enchantingRecipes.enchantCloakResistance,
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit
        }
    },

    {
        min = 220,
        max = 224,

        recipes = {
            enchantingRecipes.enchantCloakResistance,
            enchantingRecipes.enchantCloakGreaterDefense,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBootsLesserStamina
        }
    },

    {
        min = 225,
        max = 234,

        recipes = {
            enchantingRecipes.enchantCloakResistance,
            enchantingRecipes.enchantCloakGreaterDefense
        }
    },

    {
        min = 235,
        max = 239,

        recipes = {
            enchantingRecipes.enchantCloakLesserAgility,
            enchantingRecipes.enchantChestSuperiorHealth
        }
    },

    {
        min = 240,
        max = 249,

        recipes = {
            enchantingRecipes.enchantCloakLesserAgility,
            enchantingRecipes.enchantBootsLesserAccuracy,
            enchantingRecipes.enchantChestSuperiorHealth
        }
    },

    {
        min = 250,
        max = 259,

        recipes = {
            enchantingRecipes.enchantBracerGreaterStamina,
            enchantingRecipes.enchantBracerGreaterStrength,
            enchantingRecipes.lesserManaOil

        }
    },

    {
        min = 260,
        max = 264,

        recipes = {
            enchantingRecipes.enchantBracerGreaterIntellect,
            enchantingRecipes.enchantBracerGreaterStamina,
            enchantingRecipes.enchantBracerGreaterStrength

        }
    },

    {
        min = 265,
        max = 298,

        recipes = { enchantingRecipes.enchantShieldGreaterStamina
        }
    },

    {
        min = 299,
        max = 299,

        recipes = {
            enchantingRecipes.runedArcaniteRod,
            enchantingRecipes.runedFelIronRod,
            enchantingRecipes.enchantBracerAssault,
            enchantingRecipes.enchantBootsGreaterStamina

        }
    },

    {
        min = 300,
        max = 300,

        recipes = {
            enchantingRecipes.runedFelIronRod,
            enchantingRecipes.runedArcaniteRod,
            enchantingRecipes.enchantBracerAssault,
            enchantingRecipes.enchantBootsGreaterStamina

        }
    },

    {
        min = 301,
        max = 309,

        recipes = {
            enchantingRecipes.enchantBracerAssault,
            enchantingRecipes.enchantChestMajorMana,
            enchantingRecipes.runedFelIronRod,
            enchantingRecipes.runedArcaniteRod

        }
    },

    {
        min = 310,
        max = 319,

        recipes = { enchantingRecipes.enchantBracerBrawn
        }
    },

    {
        min = 320,
        max = 329,

        recipes = {
            enchantingRecipes.enchantGlovesAssault,
            enchantingRecipes.enchantCloakMajorArmor

        }
    },

    {
        min = 330,
        max = 334,

        recipes = { enchantingRecipes.enchantShieldMajorStamina
        }
    },

    {
        min = 335,
        max = 339,

        recipes = {
            enchantingRecipes.enchantShieldResilience,
            enchantingRecipes.enchantShieldMajorStamina

        }
    },

    {
        min = 340,
        max = 349,

        recipes = { enchantingRecipes.superiorWizardOil
        }
    },

    {
        min = 350,
        max = 350,

        recipes = {
            enchantingRecipes.runedAdamantiteRod,
            enchantingRecipes.enchantCloakSpeed,
            enchantingRecipes.enchantChestExceptionalMana

        }
    },

    {
        min = 351,
        max = 359,

        recipes = {
            enchantingRecipes.enchantCloakSpeed,
            enchantingRecipes.enchantChestExceptionalMana,
            enchantingRecipes.runedAdamantiteRod

        }
    },

    {
        min = 360,
        max = 375,

        recipes = { enchantingRecipes.enchantBracersStriking
        }
    },

    {
        min = 376,
        max = 376,

        recipes = {
            enchantingRecipes.runedEterniumRod,
            enchantingRecipes.enchantBracersStriking

        }
    },

    {
        min = 377,
        max = 379,

        recipes = {
            enchantingRecipes.enchantBracersStriking,
            enchantingRecipes.runedEterniumRod

        }
    },

    {
        min = 380,
        max = 384,

        recipes = { enchantingRecipes.enchantBracersExceptionalIntellect
        }
    },

    {
        min = 385,
        max = 394,

        recipes = { enchantingRecipes.enchantBootsIcewalker
        }
    },

    {
        min = 395,
        max = 409,

        recipes = {
            enchantingRecipes.enchantCloakSuperiorAgility,
            enchantingRecipes.enchantChestMightyHealth

        }
    },

    {
        min = 410,
        max = 414,

        recipes = { enchantingRecipes.enchantGlovesExpertise
        }
    },

    {
        min = 415,
        max = 419,

        recipes = {
            enchantingRecipes.enchantBootsGreaterSpirit,
            enchantingRecipes.enchantGlovesPrecision

        }
    },

    {
        min = 420,
        max = 424,

        recipes = {
            enchantingRecipes.enchantChestGreaterManaRestoration

        }
    },

    {
        min = 425,
        max = 425,

        recipes = {
            enchantingRecipes.runedTitaniumRod,
            enchantingRecipes.enchantCloakGreaterSpeed

        }
    },

    {
        min = 426,
        max = 439,

        recipes = {
            enchantingRecipes.enchantCloakGreaterSpeed,
            enchantingRecipes.enchantChestGreaterManaRestoration,
            enchantingRecipes.runedTitaniumRod

        }
    },

    {
        min = 440,
        max = 449,

        recipes = {
            enchantingRecipes.enchantBootsGreaterAssault,
            enchantingRecipes.enchantCloakMightyArmor

        }
    }
};

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Enchanting module|r');