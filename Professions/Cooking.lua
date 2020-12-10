print('[Profession Capper] loaded Cooking module');

addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getCookingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then -- 1-39
        shouldCraft = {"Spice Bread"};
        shouldCraftRecipe = {"1x Simple Flour, 1x Mild Spices"};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {"Spiced Wolf Meat"};
        shouldCraftRecipe = {"1x Stringy Wolf Meat"};
    end
    return shouldCraft, shouldCraftRecipe
end
