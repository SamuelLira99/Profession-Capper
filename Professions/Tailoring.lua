addonName, addonTable = ...;

local tailoringRecipes = addonTable.recipes.tailoring;

local shouldCraft;

addonTable.getTailoringCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 45 then -- 1-44
        shouldCraft = {"Bolt of Linen Cloth"};
        shouldCraftRecipe = {"2x Linen Cloth"};
    elseif rank > 44 and rank < 50 then -- 45-49
        shouldCraft = {"Linen Belt"};
        shouldCraftRecipe = {"1x Bolt of Linen Cloth, 1x Coarse Thread"};
    elseif rank > 49 and rank < 70 then -- 45-69
        shouldCraft = {"Heavy Linen Gloves"};
        shouldCraftRecipe = {"2x Bolt of Linen Cloth, 1x Coarse Thread"};
    elseif rank > 69 and rank < 75 then -- 70-74
        shouldCraft = {"Reinforced Linen Cape"};
        shouldCraftRecipe = {"2x Bolt of Linen Cloth, 3x Coarse Thread"};
    elseif rank > 74 and rank < 100 then -- 75-99
        shouldCraft = {"Bolt of Woolen Cloth"};
        shouldCraftRecipe = {"3x Wool Cloth"};
    elseif rank > 99 and rank < 105 then -- 100-104
          shouldCraft = {
            "Simple Kilt",
            "Woolen Bag"
          };
          shouldCraftRecipe = {
            "4x Bolt of Linen Cloth, 1x Fine Thread", -- Simple Kilt
            "3x Bolt of Woolen Cloth, 1x Fine Thread" -- Woolen Bag
          };
    elseif rank > 104 and rank < 110 then -- 105-109
        shouldCraft = {"Simple Kilt"};
        shouldCraftRecipe = {"4x Bolt of Linen Cloth, 1x Fine Thread"};
    elseif rank > 109 and rank < 125 then -- 110-124
        shouldCraft = {"Double-stitched Woolen Shoulders"};
        shouldCraftRecipe = {"3x Bolt of Woolen Cloth, 2x Fine Thread"};
    elseif rank > 124 and rank < 145 then -- 125-144
        shouldCraft = {"Bolt of Silk Cloth"};
        shouldCraftRecipe = {"4x Silk Cloth"};
    elseif rank > 144 and rank < 160 then -- 145-159
        shouldCraft = {
          "Azure Silk Hood",
          "Double-stitched Woolen Shoulders"
        };
        shouldCraftRecipe = {
          "2x Bolt of Silk Cloth, 2x Blue Dye, 1x Fine Thread", -- Azure Silk Hood
          "3x Bolt of Woolen Cloth, 2x Fine Thread" -------------- Double-stitched Woolen Shoulders
        };
    elseif rank > 159 and rank < 170 then -- 160-169
        shouldCraft = {"Silk Headband"};
        shouldCraftRecipe = {"3x Bolt of Silk Cloth, 2x Fine Thread"};
    elseif rank > 169 and rank < 175 then -- 170-174
        shouldCraft = {"Formal White Shirt"};
        shouldCraftRecipe = {"3x Bolt of Silk Cloth, 2x Bleach, 1x Fine Thread"};
    elseif rank > 174 and rank < 185 then -- 715-184
        shouldCraft = {"Bolt of Mageweave"};
        shouldCraftRecipe = {"4x Mageweave Cloth"};
    elseif rank > 184 and rank < 205 then -- 185-204
        shouldCraft = {"Crimson Silk Vest"};
        shouldCraftRecipe = {"4x Bolt of Silk Cloth, 2x Fine Thread, 2x Red Dye"};
    elseif rank > 204 and rank < 215 then -- 205-214
        shouldCraft = {
          tailoringRecipes.crimsonSilkPantaloons,
          tailoringRecipes.solidBlastingPowder
        }
        -- shouldCraftRecipe = {"4x Bolt of Silk Cloth, 2x Red Dye, 2x Silken Thread"};
    elseif rank > 214 and rank < 220 then -- 215-219
        shouldCraft = {
          "Black Mageweave Leggings",
          "Crimson Silk Pantaloons"
        };
        shouldCraftRecipe = {
          "2x Bolt of Mageweave, 3x Silken Thread", -------------- Black Mageweave Leggings
          "4x Bolt of Silk Cloth, 2x Red Dye, 2x Silken Thread" -- Crimson Silk Pantaloons
        };
    elseif rank > 219 and rank < 230 then -- 220-229
        shouldCraft = {"Black Mageweave Gloves"};
        shouldCraftRecipe = {"2x Bolt of Mageweave, 2x Heavy Silken Thread"};
    elseif rank > 229 and rank < 250 then -- 230-249
        shouldCraft = {"Black Mageweave Headband"};
        shouldCraftRecipe = {"3x Bolt of Mageweave, 2x Heavy Silken Thread"};
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {"Bolt of Runecloth"};
        shouldCraftRecipe = {"4x Runecloth"};
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {"Runecloth Belt"};
        shouldCraftRecipe = {"3x Bolt of Runecloth, 1x Rune Thread"};
    elseif rank > 279 and rank < 295 then -- 280-294
        shouldCraft = {"Runecloth Gloves"};
        shouldCraftRecipe = {"5x Bolt of Runecloth, 2x Rune Thread"};
    elseif rank > 294 and rank < 300 then -- 295-299
        shouldCraft = {"Runecloth Headband"};
        shouldCraftRecipe = {"6x Bolt of Runecloth, 2x Rune Thread"};
    elseif rank > 299 and rank < 325 then -- 300-324
        shouldCraft = {"Bolt of Netherweave"};
        shouldCraftRecipe = {"5x Netherweave Cloth"};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {"Bolt of Imbued Netherweave"};
        shouldCraftRecipe = {"3x Bolt of Netherweave, 2x Arcane Dust"};
    elseif rank > 334 and rank < 345 then -- 335-344
        shouldCraft = {"Netherweave Boots"};
        shouldCraftRecipe = {"6x Bolts of Netherweave, 2x Knothide Leather, 1x Rune Thread"};
    elseif rank > 344 and rank < 350 then -- 345-349
        shouldCraft = {"Netherweave Tunic"};
        shouldCraftRecipe = {"8x Bolts of Netherweave, 2x Rune Thread"};
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {"Bolt of Frostweave"};
        shouldCraftRecipe = {"5x Frostweave Cloth"};
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {"Frostwoven Belt"};
        shouldCraftRecipe = {"3x Bolt of Frostweave, 1x Eternium Thread"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {"Frostwoven Boots"};
        shouldCraftRecipe = {"4x Bolt of Frostweave, 1x Eternium Thread"};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {"Frostwoven Cowl"};
        shouldCraftRecipe = {"5x Bolt of Frostweave, 1x Eternium Thread"};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {"Duskweave Belt"};
        shouldCraftRecipe = {"7x Bolt of Frostweave, 1x Eternium Thread"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {"Bolt of Imbued Frostweave"};
        shouldCraftRecipe = {"2x Bolt of Frostweave, 2x Infinite Dust"};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {"Duskweave Wristwraps"};
        shouldCraftRecipe = {"8x Bolt of Frostweave, 1x Eternium Thread"};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {"Duskweave Gloves"};
        shouldCraftRecipe = {"9x Bolt of Frostweave, 1x Eternium Thread"};
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {
          "Duskweave Boots",
          "Duskweave Shoulders"
        };
        shouldCraftRecipe = {
          "10x Bolt of Frostweave, 1x Eternium Thread", -- Duskweave Boots
          "10x Bolt of Frostweave, 1x Eternium Thread" --- Duskweave Shoulders
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {"Frostweave Bag"};
        shouldCraftRecipe = {"6x Bolt of Imbued Frostweave, 2x Eternium Thread"};
    end
    return shouldCraft;
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Tailoring module|r');
