addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getFirstAidCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then --1 -39
        shouldCraft = {"Linen Bandage"};
        shouldCraftRecipe = {"1x Linen Cloth"};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {"Heavy Linen Bandage"};
        shouldCraftRecipe = {"2x Linen Cloth"};
    elseif rank > 79 and rank < 115 then -- 80-114
        shouldCraft = {"Wool Bandage"};
        shouldCraftRecipe = {"1x Wool Cloth"};
    elseif rank > 114 and rank < 150 then -- 115-149
        shouldCraft = {"Heavy Wool Bandage"};
        shouldCraftRecipe = {"2x Wool Cloth"};
    elseif rank > 149 and rank < 180 then -- 151-179
        shouldCraft = {"Silk Bandage"};
        shouldCraftRecipe = {"1x Silk Cloth"};
    elseif rank > 179 and rank < 210 then -- 180-209
        shouldCraft = {"Heavy Silk Bandage"};
        shouldCraftRecipe = {"2x Silk cloth"};
    elseif rank > 209 and rank < 240 then -- 210-239
        shouldCraft = {"Mageweave Bandage"};
        shouldCraftRecipe = {"1x Mageweave Cloth"};
    elseif rank > 239 and rank < 260 then -- 240-259
        shouldCraft = {"Heavy Mageweave Bandage"};
        shouldCraftRecipe = {"2x Mageweave Cloth"};
    elseif rank > 259 and rank < 290 then -- 260-289
        shouldCraft = {"Runecloth Bandage"};
        shouldCraftRecipe = {"1x Runecloth"};
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {"Heavy Runecloth Bandage"};
        shouldCraftRecipe = {"2x Runecloth"};
    elseif rank > 299 and rank < 330 then -- 300-329
        shouldCraft = {"Netherweave Bandage"};
        shouldCraftRecipe = {"1x Netherweave Cloth"};
    elseif rank > 329 and rank < 350 then -- 330-349
        shouldCraft = {"Heavy Netherweave Bandage"};
        shouldCraftRecipe = {"2x Netherweave Cloth"};
    elseif rank > 349 and rank < 390 then -- 350-389
        shouldCraft = {"Frostweave Bandage"};
        shouldCraftRecipe = {"1x Frostweave Cloth"};
    elseif rank > 389 and rank < 450 then -- 390-449
        shouldCraft = {"Heavy Frostweave Bandage"};
        shouldCraftRecipe = {"2x Frostweave Cloth"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded First Aid module|r');
