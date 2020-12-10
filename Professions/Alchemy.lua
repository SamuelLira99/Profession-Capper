addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getAlchemyCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 60 then -- 1-59
        shouldCraft = {"[Minor Healing Potions] - 1x Peacebloom, 1x Sliverleaf, 1x Empty Vial"};
    elseif rank > 59 and rank < 106 then -- 60-105
        shouldCraft = {"[Lesser Healing Potion] - 1x Minor Healing Potion, 1x Briarthorn"};
    elseif rank > 105 and rank < 111 then -- 106-110
        shouldCraft = {"[Elixir of Wisdom] - 1x Mageroyal, 1x Briarthorn, 1x Empty Vial"};
    elseif rank > 110 and rank < 141 then -- 111-140
        shouldCraft = {"[Healing Potion] - 1x Bruiseweed, 1x Briarthorn, 1x Leaded Vial"};
    elseif rank > 140 and rank < 156 then -- 141-155
        shouldCraft = {"[Lesser Mana Potion] - 1x Mageroyal, 1x Stranglekelp, 1x Empty Vial"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Alchemy module|r");
