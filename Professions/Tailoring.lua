addonName, addonTable = ...;

local tailoringRecipes = addonTable.recipes.tailoring;

local shouldCraft;

addonTable.getTailoringCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 45 then -- 1-44
        shouldCraft = {tailoringRecipes.boltOfLinenCloth};
    elseif rank > 44 and rank < 50 then -- 45-49
        shouldCraft = {tailoringRecipes.linenBelt};
    elseif rank > 49 and rank < 70 then -- 45-69
        shouldCraft = {tailoringRecipes.heavyLinenGloves};
    elseif rank > 69 and rank < 75 then -- 70-74
        shouldCraft = {tailoringRecipes.reinforcedLinenCape};
    elseif rank > 74 and rank < 100 then -- 75-99
        shouldCraft = {tailoringRecipes.boltOfWoolenCloth};
    elseif rank > 99 and rank < 105 then -- 100-104
          shouldCraft = {
            tailoringRecipes.simpleKilt,
            tailoringRecipes.woolenBag
          };
    elseif rank > 104 and rank < 110 then -- 105-109
        shouldCraft = {tailoringRecipes.simpleKilt};
    elseif rank > 109 and rank < 125 then -- 110-124
        shouldCraft = {tailoringRecipes.doubleStitchedWoolenShoulders};
    elseif rank > 124 and rank < 145 then -- 125-144
        shouldCraft = {tailoringRecipes.boltOfSilkCloth};
    elseif rank > 144 and rank < 160 then -- 145-159
        shouldCraft = {
          tailoringRecipes.azureSilkHood,
          tailoringRecipes.doubleStitchedWoolenShoulders
        };
    elseif rank > 159 and rank < 170 then -- 160-169
        shouldCraft = {tailoringRecipes.silkHeadband};
    elseif rank > 169 and rank < 175 then -- 170-174
        shouldCraft = {tailoringRecipes.formalWhiteShirt};
    elseif rank > 174 and rank < 185 then -- 715-184
        shouldCraft = {tailoringRecipes.boltOfMageweave};
    elseif rank > 184 and rank < 205 then -- 185-204
        shouldCraft = {tailoringRecipes.crimsonSilkVest};
    elseif rank > 204 and rank < 215 then -- 205-214
        shouldCraft = {tailoringRecipes.crimsonSilkPantaloons}
    elseif rank > 214 and rank < 220 then -- 215-219
        shouldCraft = {
          tailoringRecipes.blackMageweaveLeggings,
          tailoringRecipes.blackMageweaveVest,
          tailoringRecipes.crimsonSilkPantaloons
        };
    elseif rank > 219 and rank < 230 then -- 220-229
        shouldCraft = {tailoringRecipes.blackMageweaveGloves};
    elseif rank > 229 and rank < 250 then -- 230-249
        shouldCraft = {
            tailoringRecipes.blackMageweaveHeadband,
            tailoringRecipes.blackMageweaveShoulders
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {tailoringRecipes.boltOfRunecloth};
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {tailoringRecipes.runeclothBelt};
    elseif rank > 279 and rank < 295 then -- 280-294
        shouldCraft = {tailoringRecipes.runeclothGloves};
    elseif rank > 294 and rank < 300 then -- 295-299
        shouldCraft = {tailoringRecipes.runeclothHeadband};
    elseif rank > 299 and rank < 325 then -- 300-324
        shouldCraft = {tailoringRecipes.boltOfNetherweave};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {tailoringRecipes.boltOfImbuedNetherweave};
    elseif rank > 334 and rank < 345 then -- 335-344
        shouldCraft = {tailoringRecipes.netherweaveBoots};
    elseif rank > 344 and rank < 350 then -- 345-349
        shouldCraft = {tailoringRecipes.netherweaveTunic};
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {tailoringRecipes.boltOfFrostweave};
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {tailoringRecipes.frostwovenBelt};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {tailoringRecipes.frostwovenBoots};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {tailoringRecipes.frostwovenCowl};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {tailoringRecipes.duskweaveBelt};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {boltOfImbuedFrostweave};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {tailoringRecipes.duskweaveWristwraps};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {tailoringRecipes.duskweaveGloves};
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {
          tailoringRecipes.duskweaveBoots,
          tailoringRecipes.duskweaveShoulders
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {tailoringRecipes.frostweaveBag};
    end
    return shouldCraft;
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Tailoring module|r');
