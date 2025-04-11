addonName, addonTable = ...;

local engineeringRecipes = addonTable.recipes.engineering;

local shouldCraft, shouldCraftRecipe;

addonTable.getEngineeringCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 21 then -- 1-20
        shouldCraft = {engineeringRecipes.roughBlastingPowder};
    elseif rank > 20 and rank < 31 then -- 21-30
        shouldCraft = {
            engineeringRecipes.roughDynamite,
            engineeringRecipes.roughBlastingPowder
        };
    elseif rank > 30 and rank < 50 then -- 31-49
        shouldCraft = {
            engineeringRecipes.handfulOfCopperBolts,
            engineeringRecipes.roughDynamite
        };
    elseif rank > 49 and rank < 51 then -- 50
        shouldCraft = {
            engineeringRecipes.arclightSpanner,
            engineeringRecipes.copperTube
        };
    elseif rank > 50 and rank < 75 then -- 51-74
        shouldCraft = {
            engineeringRecipes.copperTube,
            engineeringRecipes.arclightSpanner
        };
    elseif rank > 74 and rank < 85 then -- 75-84
        shouldCraft = {
            engineeringRecipes.coarseBlastingPowder,
            engineeringRecipes.copperTube,
            engineeringRecipes.arclightSpanner
        };
    elseif rank > 84 and rank < 90 then -- 85-89
        shouldCraft = {
            engineeringRecipes.coarseDynamite,
            engineeringRecipes.coarseBlastingPowder,
            engineeringRecipes.copperTube
        };
    elseif rank > 89 and rank < 110 then -- 90-109
        shouldCraft = {
            engineeringRecipes.silverContact,
            engineeringRecipes.copperModulator
        };
    elseif rank > 109 and rank < 125 then -- 110-124
        shouldCraft = {
            engineeringRecipes.bronzeTube,
            engineeringRecipes.largeCopperBomb,
            engineeringRecipes.silverContact
        };
    elseif rank > 124 and rank < 135 then -- 125-134
        shouldCraft = {engineeringRecipes.heavyBlastingPowder};
    elseif rank > 134 and rank < 145 then -- 135-144
        shouldCraft = {
            engineeringRecipes.whirringBronzeGizmo,
            engineeringRecipes.heavyBlastingPowder
        };
    elseif rank > 144 and rank < 150 then -- 145-149
        shouldCraft = {engineeringRecipes.whirringBronzeGizmo};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {engineeringRecipes.bronzeFramework};
    elseif rank > 154 and rank < 175 then -- 155-174
        shouldCraft = {
            engineeringRecipes.explosiveSheep,
            engineeringRecipes.goldPowerCore,
            engineeringRecipes.ironStrut
        };
    elseif rank > 174 and rank < 176 then -- 175
        shouldCraft = {
            engineeringRecipes.gyromaticMicroAdjustor,
            engineeringRecipes.solidBlastingPowder
        };
    elseif rank > 175 and rank < 195 then -- 176-194
          shouldCraft = {
            engineeringRecipes.solidBlastingPowder,
            engineeringRecipes.gyromaticMicroAdjustor
        };
    elseif rank > 194 and rank < 200 then -- 195-199
        shouldCraft = {engineeringRecipes.mithrilTube};
    elseif rank > 199 and rank < 210 then -- 200-209
            shouldCraft = {
                engineeringRecipes.unstableTrigger,
                engineeringRecipes.mithrilTube
            };
    elseif rank > 209 and rank < 225 then -- 210-224
        shouldCraft = {engineeringRecipes.hiImpactMithrilSlugs};
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {engineeringRecipes.mithrilCasing};
    elseif rank > 234 and rank < 245 then -- 235-244
        shouldCraft = {
            engineeringRecipes.hiExplosiveBomb,
            engineeringRecipes.mithrilCasing
        };
    elseif rank > 244 and rank < 250 then -- 245-249
        shouldCraft = {
            engineeringRecipes.mithrilGyroShot,
            engineeringRecipes.hiExplosiveBomb
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {
            engineeringRecipes.denseBlastingPowder,
            engineeringRecipes.mithrilGyroShot
        };
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {engineeringRecipes.thoriumWidget};
    elseif rank > 279 and rank < 285 then -- 280-284
        shouldCraft = {engineeringRecipes.thoriumTube};
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {engineeringRecipes.thoriumShells};
    elseif rank > 299 and rank < 305 then -- 300-304
        shouldCraft = {
            engineeringRecipes.handfulOfFelIronBolts,
            engineeringRecipes.elementalBlastingPowder,
            engineeringRecipes.thoriumShells
        };
    elseif rank > 304 and rank < 310 then -- 300-309
        shouldCraft = {
            engineeringRecipes.handfulOfFelIronBolts,
            engineeringRecipes.elementalBlastingPowder
        };
    elseif rank > 309 and rank < 320 then -- 310-319
            shouldCraft = {
                engineeringRecipes.felIronCasing,
                engineeringRecipes.elementalBlastingPowder
            };
    elseif rank > 319 and rank < 325 then -- 320-324
            shouldCraft = {
                engineeringRecipes.felIronBomb,
                engineeringRecipes.felIronMusket
            };
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {engineeringRecipes.adamantiteGrenade};
        elseif rank > 334 and rank < 340 then -- 335-339
            shouldCraft = {
                engineeringRecipes.whiteSmokeFlare,
                engineeringRecipes.adamantiteGrenade
            };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
            engineeringRecipes.felsteelStabilizer,
            engineeringRecipes.whiteSmokeFlare
        };
    elseif rank > 349 and rank < 370 then -- 350-369
        shouldCraft = {engineeringRecipes.handfulOfCobaltBolts};
    elseif rank > 369 and rank < 375 then -- 370-374
        shouldCraft = {engineeringRecipes.volatileBlastingTrigger};
    elseif rank > 374 and rank < 385 then -- 375-384
        shouldCraft = {
            engineeringRecipes.overchargedCapacitor,
            engineeringRecipes.hammerPick,
            engineeringRecipes.bladedPickaxe
        };
    elseif rank > 384 and rank < 390 then -- 385-389
        shouldCraft = {engineeringRecipes.explosiveDecoy};
    elseif rank > 389 and rank < 400 then -- 390-399
        shouldCraft = {engineeringRecipes.froststeelTube};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {engineeringRecipes.diamondCutRefractorScope};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {engineeringRecipes.boxOfBombs};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {engineeringRecipes.mammothCutters};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {engineeringRecipes.saroniteRazorheads};
    elseif rank > 419 and rank < 430 then -- 420-429
        shouldCraft = {
          engineeringRecipes.mechanizedSnowGogglesCloth,
          engineeringRecipes.mechanizedSnowGogglesLeather,
          engineeringRecipes.mechanizedSnowGogglesMail,
          engineeringRecipes.mechanizedSnowGogglesPlate,
        };
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {
          engineeringRecipes.noiseMachine,
          engineeringRecipes.sonicBooster
        };
    elseif rank > 434 and rank < 450 then -- 435-449
        shouldCraft = {engineeringRecipes.gnomishArmyKnife};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Engineering module|r');
