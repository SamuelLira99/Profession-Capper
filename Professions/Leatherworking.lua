print('[Profession Capper] loaded Leatherworking module');

addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 20 then -- 1-20
        shouldCraft = {
            "Light Leather",
            "Light Armor Kit"
        };
        shouldCraftRecipe = {
            "3x Ruined Leather Scraps",---Light Leather
            "1x Light Leather"------------Light Armor Kit
        };
    elseif rank > 19 and rank < 30 then -- 20-29
        shouldCraft = {"Light Armor Kit"};
        shouldCraftRecipe = {"1x Light Leather"};
    elseif rank > 29 and rank < 50 then -- 30-49
        shouldCraft = {"Handstitched Leather Cloak"};
        shouldCraftRecipe = {"2x Light Leather, 1x Coarse Thread"};
    elseif rank > 49 and rank < 55 then -- 50-54
        shouldCraft = {"Small Leather Ammo Pouch"};
        shouldCraftRecipe = {"3x Light Leather, 4x Coarse Thread"};
    elseif rank > 54 and rank < 85 then -- 55-84
        shouldCraft = {"Embossed Leather Gloves"};
        shouldCraftRecipe = {"3x Light Leather, 2x Coarse Thread"};
    elseif rank > 84 and rank < 100 then -- 85-99
        shouldCraft = {"Fine Leather Belt"};
        shouldCraftRecipe = {"6x Light Leather, 2x Coarse Thread"};
    elseif rank > 99 and rank < 115 then -- 100-114
        shouldCraft = {"Cured Medium Hide"}; -- Alternative [Medium Armor Kit]
        shouldCraftRecipe = {"1x Medium Hide, 1x Salt"};
    elseif rank > 114 and rank < 130 then -- 115-129
        shouldCraft = {"Dark Leather Boots"};
        shouldCraftRecipe = {"4x Medium Leather, 2x Fine Thread, 1x Gray Dye"};
    end
    return shouldCraft, shouldCraftRecipe
end
