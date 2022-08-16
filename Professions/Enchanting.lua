local addonName, addonTable = ...;

local enchantingRecipes = addonTable.recipes.enchanting;

local shouldCraft;


addonTable.getEnchantingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 2 then -- 1
        shouldCraft = {enchantingRecipes.runedCopperRod};
    elseif rank > 1 and rank < 10 then -- 2-9
        shouldCraft = {
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.runedCopperRod
        };
    elseif rank > 9 and rank < 15 then -- 10-14
        shouldCraft = {enchantingRecipes.enchantBracerMinorHealth};
    elseif rank > 14 and rank < 20 then -- 15-19
        shouldCraft = {
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.enchantChestMinorHealth
        };
    elseif rank > 19 and rank < 60 then -- 20-59
        shouldCraft = {
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.enchantChestMinorHealth,
            enchantingRecipes.enchantChestMinorMana
        };
    elseif rank > 59 and rank < 90 then -- 60-89
        shouldCraft = {
            enchantingRecipes.enchantChestMinorMana,
            enchantingRecipes.enchantBracerMinorHealth,
            enchantingRecipes.enchantChestMinorHealth
        };
    elseif rank > 89 and rank < 100 then -- 90-99
        shouldCraft = {
            enchantingRecipes.enchantChestMinorMana,
            enchantingRecipes.enchantBracerMinorStamina
        };
    elseif rank > 99 and rank < 101 then -- 100
        shouldCraft = {
            enchantingRecipes.runedSilverRod,
            enchantingRecipes.enchantBracerMinorSpirit,
            enchantingRecipes.enchantBracerMinorStamina
        };
    elseif rank > 100 and rank < 110 then -- 101-109
        shouldCraft = {
            enchantingRecipes.enchantBracerMinorSpirit,
            enchantingRecipes.enchantBracerMinorStamina,
            enchantingRecipes.runedSilverRod
        };
    elseif rank > 109 and rank < 135 then -- 110-134
        shouldCraft = {
            enchantingRecipes.enchantCloakMinorAgility, -- bougth from vendor
            enchantingRecipes.enchantBracerMinorSpirit,
            enchantingRecipes.enchantBracerMinorStrength,
            enchantingRecipes.runedSilverRod
        };
    elseif rank > 134 and rank < 140 then -- 135-139
        shouldCraft = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedSilverRod
        };
    elseif rank > 139 and rank < 150 then -- 140-149
        shouldCraft = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedSilverRod
        };
    elseif rank > 149 and rank < 155 then -- 155-154
        shouldCraft = {
            enchantingRecipes.enchantCloakMinorAgility,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina
        };
    elseif rank > 154 and rank < 156 then -- 155
        shouldCraft = {
            enchantingRecipes.runedGoldenRod,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBracerLesserStamina,
            enchantingRecipes.enchantBootsMinorStamina
        };
    elseif rank > 155 and rank < 165 then -- 156-164
        shouldCraft = {
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedGoldenRod
        };
    elseif rank > 164 and rank < 180 then -- 165-179
        shouldCraft = {
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedGoldenRod
        };
    elseif rank > 179 and rank < 184 then -- 180-185
        shouldCraft = {
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.enchantBootsMinorStamina,
            enchantingRecipes.runedGoldenRod
        };
    elseif rank > 184 and rank < 200 then -- 185-199
        shouldCraft = {
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantChestGreaterHealth
        };
    elseif rank > 199 and rank < 201 then -- 200
        shouldCraft = {
            enchantingRecipes.runedTruesilverRod,
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerLesserStrength
        };
    elseif rank > 200 and rank < 205 then -- 201-204
        shouldCraft = {
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBracerLesserStrength,
            enchantingRecipes.runedTruesilverRod
        };
    elseif rank > 204 and rank < 220 then -- 205-219
        shouldCraft = {
            enchantingRecipes.enchantCloakResistance,
            enchantingRecipes.enchantBracerStrength,
            enchantingRecipes.enchantBracerSpirit
        };
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {
            enchantingRecipes.enchantCloakResistance,
            enchantingRecipes.enchantCloakGreaterDefense,
            enchantingRecipes.enchantBracerSpirit,
            enchantingRecipes.enchantBootsLesserStamina
        };
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {
            enchantingRecipes.enchantCloakResistance,
            enchantingRecipes.enchantCloakGreaterDefense
        };
    elseif rank > 234 and rank < 240 then -- 235-239
        shouldCraft = {
            enchantingRecipes.enchantCloakLesserAgility,
            enchantingRecipes.enchantChestSuperiorHealth
        };
    elseif rank > 239 and rank < 250 then -- 240-249
        shouldCraft = {
            enchantingRecipes.enchantCloakLesserAgility,
            enchantingRecipes.enchantBootsLesserAccuracy,
            enchantingRecipes.enchantChestSuperiorHealth
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {
            enchantingRecipes.enchantBracerGreaterStamina,
            enchantingRecipes.enchantBracerGreaterStrength,
            enchantingRecipes.lesserManaOil
        };
    elseif rank > 259 and rank < 265 then -- 260-264
        shouldCraft = {
            enchantingRecipes.enchantBracerGreaterIntellect,
            enchantingRecipes.enchantBracerGreaterStamina,
            enchantingRecipes.enchantBracerGreaterStrength
        };
    elseif rank > 264 and rank < 299 then -- 265-298
        shouldCraft = {enchantingRecipes.enchantShieldGreaterStamina}; -- bought from vendor
    elseif rank > 298 and rank < 300 then -- 299
        shouldCraft = {
            enchantingRecipes.runedArcaniteRod,
            enchantingRecipes.runedFelIronRod,
            enchantingRecipes.enchantBracerAssault,
            enchantingRecipes.enchantBootsGreaterStamina
        };
    elseif rank > 299 and rank < 301 then -- 300
        shouldCraft = {
            enchantingRecipes.runedFelIronRod,
            enchantingRecipes.runedArcaniteRod,
            enchantingRecipes.enchantBracerAssault,
            enchantingRecipes.enchantBootsGreaterStamina
        };
    elseif rank > 300 and rank < 310 then -- 301-309
        shouldCraft = {
            enchantingRecipes.enchantBracerAssault,
            enchantingRecipes.enchantChestMajorMana,
            enchantingRecipes.runedFelIronRod,
            enchantingRecipes.runedArcaniteRod
        };
    elseif rank > 309 and rank < 320 then -- 310-319
        shouldCraft = {enchantingRecipes.enchantBracerBrawn};
    elseif rank > 319 and rank < 330 then --320-329
        shouldCraft = {
            enchantingRecipes.enchantGlovesAssault,
            enchantingRecipes.enchantCloakMajorArmor
        };
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {enchantingRecipes.enchantShieldMajorStamina};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {
            enchantingRecipes.enchantShieldResilience,
            enchantingRecipes.enchantShieldMajorStamina
        };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {enchantingRecipes.superiorWizardOil};
    elseif rank > 349 and rank < 351 then -- 350
        shouldCraft = {
            enchantingRecipes.runedAdamantiteRod,
            enchantingRecipes.enchantCloakSpeed,
            enchantingRecipes.enchantChestExceptionalMana
        };
    elseif rank > 350 and rank < 360 then -- 351-359
        shouldCraft = {
            enchantingRecipes.enchantCloakSpeed,
            enchantingRecipes.enchantChestExceptionalMana,
            enchantingRecipes.runedAdamantiteRod
        };
    elseif rank > 359 and rank < 376 then -- 360-375
        shouldCraft = {enchantingRecipes.enchantBracersStriking};
    elseif rank > 375 and rank < 377 then -- 376
        shouldCraft = {
            enchantingRecipes.runedEterniumRod,
            enchantingRecipes.enchantBracersStriking
        };
    elseif rank > 376 and rank < 380 then -- 376-379
        shouldCraft = {
            enchantingRecipes.enchantBracersStriking,
            enchantingRecipes.runedEterniumRod
        };
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {enchantingRecipes.enchantBracersExceptionalIntellect};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {enchantingRecipes.enchantBootsIcewalker};
    elseif rank > 394 and rank < 410 then -- 395-409
        shouldCraft = {
            enchantingRecipes.enchantCloakSuperiorAgility,
            enchantingRecipes.enchantChestMightyHealth
        };
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {enchantingRecipes.enchantGlovesExpertise};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {
            enchantingRecipes.enchantBootsGreaterSpirit,
            enchantingRecipes.enchantGlovesPrecision
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {
            enchantingRecipes.enchantChestGreaterManaRestoration
        };
    elseif rank > 424 and rank < 426 then -- 425
        shouldCraft = {
            enchantingRecipes.runedTitaniumRod,
            enchantCloakGreaterSpeed
        };
    elseif rank > 425 and rank < 440 then -- 426-439
        shouldCraft = {
            enchantingRecipes.enchantCloakGreaterSpeed,
            enchantingRecipes.enchantChestGreaterManaRestoration,
            enchantingRecipes.runedTitaniumRod
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            enchantingRecipes.enchantBootsGreaterAssault,
            enchantingRecipes.enchantCloakMightyArmor
        };
    end
    return shouldCraft;
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Enchanting module|r");
