addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getFirstAidCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then --1 -39
        shouldCraft = {"Linen Bandage"};
        shouldCraftRecipe = {"1x Linen Cloth"};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {"Heavy Linen Bandage"};
        shouldCraftRecipe = {"2x Linen Cloth"};
    elseif rank > 79 and rank < 100 then -- 80-99
        shouldCraft = {
            "Wool Bandage",
            "Heavy Linen Bandage",
            "Anti-Venom"
        };
        shouldCraftRecipe = {
            "1x Wool Cloth", ------ Wool Bandage
            "2x Linen Cloth", ----- Heavy Linen Bandage
            "1x Small Venom Sac" -- Anti-Venom
        };
    elseif rank > 99 and rank < 115 then -- 100-114
        shouldCraft = {
            "Wool Bandage",
            "Anti-Venom"
        };
        shouldCraftRecipe = {
            "1x Wool Cloth", ------ Wool Bandage
            "1x Small Venom Sac" -- Anti-Venom
        };
    elseif rank > 114 and rank < 130 then -- 115-129
        shouldCraft = {"Heavy Wool Bandage"};
        shouldCraftRecipe = {"2x Wool Cloth"};
    elseif rank > 129 and rank < 150 then -- 130-149
        shouldCraft = {
            "Heavy Wool Bandage",
            "Strong Anti-Venom"
        };
        shouldCraftRecipe = {
            "2x Wool Cloth", ------ Heavy Wool Bandage
            "1x Large Venom Sac" -- Strong Anti-Venom
        };
    elseif rank > 149 and rank < 180 then -- 150-179
        shouldCraft = {
            "Silk Bandage",
            "Heavy Wool Bandage",
            "Strong Anti-Venom"
        };
        shouldCraftRecipe = {
            "1x Silk Cloth", ------- Silk Bandage
            "2x Whool Cloth", ------ Heavy Wool Bandage
            "1x Large Venom Sack" -- Strong Anti-Venom
        };
    elseif rank > 179 and rank < 210 then -- 180-209
        shouldCraft = {"Heavy Silk Bandage"};
        shouldCraftRecipe = {"2x Silk cloth"};
    elseif rank > 209 and rank < 240 then -- 210-239
        shouldCraft = {
            "Mageweave Bandage",
            "Heavy Silk Bandage"
        };
        shouldCraftRecipe = {
            "1x Mageweave Cloth", -- Mageweave Bandage
            "2x Silk Cloth" -------- Heavy Silk Bandage
        };
    elseif rank > 239 and rank < 260 then -- 240-259
        shouldCraft = {"Heavy Mageweave Bandage"};
        shouldCraftRecipe = {"2x Mageweave Cloth"};
    elseif rank > 259 and rank < 290 then -- 260-289
        shouldCraft = {
            "Runecloth Bandage",
            "Heavy Mageweave Bandage"
        };
        shouldCraftRecipe = {
            "1x Runecloth", ------- Runecloth Bandage
            "2x Mageweave Cloth" -- Heavy Mageweave Bandage
        };
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
            "Heavy Runecloth Bandage",
            "Heavy Mageweave Bandage"
        };
        shouldCraftRecipe = {
            "2x Runecloth", --------- Heavy Runecloth Bandage
            "2x Mageweave Bandage" -- Heavy Mageweave Bandage
        };
    elseif rank > 299 and rank < 330 then -- 300-329
        shouldCraft = {
            "Netherweave Bandage",
            "Heavy Runecloth Bandage",
            "Powerful Anti-Venom"
        };
        shouldCraftRecipe = {
            "1x Netherweave Cloth", -- Netherweave Bandage
            "2x Runecloth", ---------- Heavy Runecloth Bandage
            "1x Huge Venom Sac" ------ Powerful Anti-Venom
        };
    elseif rank > 329 and rank < 350 then -- 330-349
        shouldCraft = {
            "Heavy Netherweave Bandage",
            "Heavy Runecloth Bandage",
            "Powerful Anti-Venom"
        };
        shouldCraftRecipe = {
            "2x Netherweave Cloth", -- Heavy Netherweave Bandage
            "2x Runecloth", ---------- Heavy Runecloth Bandage
            "1x Huge Venom Sac" ------ Powerful Anti-Venom
        };
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {
            "Frostweave Bandage",
            "Heavy Netherweave Bandage"
        };
        shouldCraftRecipe = {
            "1x Frostweave Cloth", -- Frostweave Bandage
            "2x Netherweave Cloth" -- Heavy Netherweave Bandage
        };
    elseif rank > 374 and rank < 400 then -- 375-399
        shouldCraft = {"Frostweave Bandage"};
        shouldCraftRecipe = {"1x Frostweave Cloth"};
    elseif rank > 399 and rank < 450 then -- 400-449
        shouldCraft = {"Heavy Frostweave Bandage"};
        shouldCraftRecipe = {"2x Frostweave Cloth"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded First Aid module|r');
