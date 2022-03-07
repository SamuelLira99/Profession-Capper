addonName, addonTable = ...;

local firstAidRecipes = addonTable.recipes.firstAid;

local shouldCraft;

addonTable.getFirstAidCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then --1 -39
        shouldCraft = {firstAidRecipes.linenBandage};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {firstAidRecipes.heavyLinenBandage};
    elseif rank > 79 and rank < 100 then -- 80-99
        shouldCraft = {
            firstAidRecipes.woolBandage,
            firstAidRecipes.heavyLinenBandage,
            firstAidRecipes.antiVenom
        };
    elseif rank > 99 and rank < 115 then -- 100-114
        shouldCraft = {
            firstAidRecipes.woolBandage,
            firstAidRecipes.antiVenom
        };
    elseif rank > 114 and rank < 130 then -- 115-129
        shouldCraft = {firstAidRecipes.heavyWoolBandage};
    elseif rank > 129 and rank < 150 then -- 130-149
        shouldCraft = {
            firstAidRecipes.heavyWoolBandage,
            firstAidRecipes.strongAntiVenom
        };
    elseif rank > 149 and rank < 180 then -- 150-179
        shouldCraft = {
            firstAidRecipes.silkBandage,
            firstAidRecipes.heavyWoolBandage,
            firstAidRecipes.strongAntiVenom
        };
    elseif rank > 179 and rank < 210 then -- 180-209
        shouldCraft = {firstAidRecipes.heavySilkBandage};
    elseif rank > 209 and rank < 240 then -- 210-239
        shouldCraft = {
            firstAidRecipes.mageweaveBandage,
            firstAidRecipes.heavySilkBandage
        };
    elseif rank > 239 and rank < 260 then -- 240-259
        shouldCraft = {firstAidRecipes.heavyMageweaveBandage};
    elseif rank > 259 and rank < 290 then -- 260-289
        shouldCraft = {
            firstAidRecipes.runeclothBandage,
            firstAidRecipes.heavyMageweaveBandage
        };
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
            firstAidRecipes.heavyRuneclothBandage,
            firstAidRecipes.heavyMageweaveBandage
        };
    elseif rank > 299 and rank < 330 then -- 300-329
        shouldCraft = {
            firstAidRecipes.netherweaveBandage,
            firstAidRecipes.heavyRuneclothBandage,
            firstAidRecipes.powerfulAntiVenom
        };
    elseif rank > 329 and rank < 350 then -- 330-349
        shouldCraft = {
            firstAidRecipes.heavyNetherweaveBandage,
            firstAidRecipes.heavyRuneclothBandage,
            firstAidRecipes.powerfulAntiVenom
        };
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {
            firstAidRecipes.frostweaveBandage,
            firstAidRecipes.heavyNetherweaveBandage
        };
    elseif rank > 374 and rank < 400 then -- 375-399
        shouldCraft = {firstAidRecipes.frostweaveBandage};
    elseif rank > 399 and rank < 450 then -- 400-449
        shouldCraft = {firstAidRecipes.heavyFrostweaveBandage};
    end
    return shouldCraft
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded First Aid module|r');
