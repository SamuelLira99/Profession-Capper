addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 26 then -- 1-25
        shouldCraft = {"Rough Sharpening Stone"};
        shouldCraftRecipe = {"1x Rough Stone"};
    elseif rank > 25 and rank < 46 then -- 26-45
        shouldCraft = {"Rough Grinding Stone"};
        shouldCraftRecipe = {"2x Rough Stone"};
    elseif rank > 45 and rank < 76 then -- 46-75
        shouldCraft = {"Copper Chain Belt"};
        shouldCraftRecipe = {"6x Copper Bar"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Blacksmithing module|r');
