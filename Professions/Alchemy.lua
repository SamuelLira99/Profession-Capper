addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getAlchemyCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 60 then -- 1-59
        shouldCraft = {"Minor Healing Potions"};
        shouldCraftRecipe = {"1x Peacebloom, 1x Sliverleaf, 1x Empty Vial"};
    elseif rank > 59 and rank < 106 then -- 60-105
        shouldCraft = {"Lesser Healing Potion"};
        shouldCraftRecipe = {"1x Minor Healing Potion, 1x Briarthorn"};
    elseif rank > 105 and rank < 110 then -- 106-109
        shouldCraft = {"Elixir of Wisdom"};
        shouldCraftRecipe = {"1x Mageroyal, 1x Briarthorn, 1x Empty Vial"};
    elseif rank > 109 and rank < 140 then -- 111-139
        shouldCraft = {"Healing Potion"};
        shouldCraftRecipe = {"1x Bruiseweed, 1x Briarthorn, 1x Leaded Vial"};
    elseif rank > 139 and rank < 155 then -- 141-154
        shouldCraft = {"Lesser Mana Potion"};
        shouldCraftRecipe = {"1x Mageroyal, 1x Stranglekelp, 1x Empty Vial"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Alchemy module|r");
