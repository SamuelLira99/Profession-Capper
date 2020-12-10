addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getCookingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then -- 1-39
        shouldCraft = {"Spice Bread"};
        shouldCraftRecipe = {"1x Simple Flour, 1x Mild Spices"};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {
            "Spiced Wolf Meat",
            "Smoked Bear Meat"
        };
        shouldCraftRecipe = {
            "1x Stringy Wolf Meat",---Spiced Wolf Meat
            "1x Bear Meat"------------Smoked Bear Meat
        };
    elseif rank > 79 and rank < 90 then -- 80-89
        shouldCraft = {
            "Boiled Clams",
            "Crab Cake",
            "Smoked Bear Meat"
        };
        shouldCraftRecipe = {
            "1x Clam Meat, 1x Refreshing Spring Water",---Boiled Clams
            "Crawler Meat",-------------------------------Crab Cake
            "Bear Meat"-----------------------------------Smoked Bear Meat
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Cooking module|r');
