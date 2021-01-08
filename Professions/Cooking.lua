addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getCookingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then -- 1-39
        shouldCraft = {"Spice Bread"};
        shouldCraftRecipe = {"1x Simple Flour, 1x Mild Spices"};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {
            "Smoked Bear Meat",
            "Spiced Wolf Meat"
        };
        shouldCraftRecipe = {
            "1x Bear Meat", ---------- Smoked Bear Meat
            "1x Stringy Wolf Meat" --- Spiced Wolf Meat
        };
    elseif rank > 79 and rank < 130 then -- 80-129
        shouldCraft = {
            "Crab Cake",
            "Boiled Clams"
        };
        shouldCraftRecipe = {
            "Crawler Meat",-------------------------------Crab Cake
            "1x Clam Meat, 1x Refreshing Spring Water" ---Boiled Clams
        };
    elseif rank > 129 and rank < 175 then -- 130-174
        shouldCraft = {"Curiously Tasty Omelet"};
        shouldCraftRecipe = {"1x Raptor Egg"};
    elseif rank > 174 and rank < 225 then -- 175-224
        shouldCraft = {"Roast Raptor"};
        shouldCraftRecipe = {"1x Raptor Flesh"};
    elseif rank > 224 and rank < 250 then -- 225-249
        shouldCraft = {"Monster Omelet"};
        shouldCraftRecipe = {"1x Giant Egg"};
    elseif rank > 249 and rank < 285 then -- 250-284
        shouldCraft = {
            "Juicy Bear Burger",
            "Charred Bear Kabobs"
        };
        shouldCraftRecipe = {
            "1x Bear Flank", -- Juicy Bear Burger
            "1x Bear Flank"  -- Charred Bear Kabobs
        };
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {"Smoked Desert Dumplings"};
        shouldCraftRecipe = {"1x Sandworm Meat"};
    elseif rank > 299 and rank < 325 then -- 300-324
        shouldCraft = {
            "Ravager Dog",
            "Buzzard Bites"
        };
        shouldCraftRecipe = {
            "1x Ravager Flesh", -- Ravager Dog
            "1x Buzzard Meat" ---- Buzzard Bites
        };
    elseif rank > 324 and rank < 350 then -- 325-349
        shouldCraft = {
            "Talbuk Steak",
            "Roasted Clefthoof",
            "Warp Burger"
        };
        shouldCraftRecipe = {
            "1x Talbuk Venison", -- Talbuk Steak
            "1x Clefthoof Meat", -- Roasted Clefthoof
            "1x Warped Flesh" ----- Warp Burger
        };
    elseif rank > 349 and rank < 365 then -- 350-364
        shouldCraft = {"Northern Stew"};
        shouldCraftRecipe = {"1x Chilled Meat"};
    elseif rank > 364 and rank < 375 then -- 365-374
        shouldCraft = {
            "Rhino Dogs",
            "Pickled Fangtooth",
            "Worm Delight",
            "Baked Manta Ray",
            "Grilled Sculpin",
            "Mammoth Meal",
            "Poached Nettlefish",
            "Roasted Worg",
            "Shoveltusk Steak",
            "Smoked Salmon",
            "Dalaran Clam Chowder"
        };
        shouldCraftRecipe = {
            "1x Rhino Meat", ---------- Rhino Dogs
            "1x Fangtooth Herring", --- Pickled Fangtooth
            "1x Worm Meat", ----------- Worm Delight
            "1x Imperial Manta Ray", -- Baked Manta Ray
            "1x Musselback Sculpin", -- Grilled Sculpin
            "1x Chunk o' Mammoth", ---- Mammoth Meal
            "1x Nettlefish", ---------- Poached Nettlefish
            "1x Worg Haunch", --------- Roasted Worg
            "1x Shoveltusk Flank", ---- Shoveltusk Steak
            "1x Glacial Salmon", ------ Smoked Salmon
            "2x Succulent Clam Meat" -- Dalaran Clam Chowder
        };
    elseif rank > 374 and rank < 400 then -- 375-399
        shouldCraft = {"Kungaloosh"};
        shouldCraftRecipe = {"2x Tundra Berries, 1x Savory Snowplum"};
    elseif rank > 399 and rank < 425 then -- 400-424
        shouldCraft = {
            "Blackened Dragonfin",
            "Dragonfin Filet",
            "Blackened Worg Steak",
            "Very Burnt Worg",
            "Cuttlesteak",
            "Firecracker Salmon",
            "Hearty Rhino",
            "Imperial Manta Steak",
            "Poached Northern Sculpin",
            "Spiced Mammoth Treats",
            "Spicy Blue Nettlefish",
            "Spicy Fried Herring",
            "Tracker Snacks"
        };
        shouldCraftRecipe = {
            "1x Dragonfin Angelfish, 1x Northern Spices", -- Blackened Dragonfin
            "1x Dragonfin Angelfish, 1x Northern Spices", -- Dragonfin Filet
            "1x Worg Haunch, 1x Northern Spices", ---------- Blackened Worg Steak
            "1x Worg Haunch, 1x Northern Spices", ---------- Very Burnt Worg
            "1x Moonglow Cuttlefish, 1x Northern Spices", -- Cuttlesteak
            "1x Glacial Salmon, 1x Northern Spices", ------- Firecracker Salmon
            "1x Rhino Meat, 1x Northern Spices", ----------- Hearty Rhino
            "1x Imperial Manta Ray, 1x Northern Spices", --- Imperial Manta Steak
            "1x Musselback Sculpin, 1x Northern Spices", --- Poached Northern Sculpin
            "1x Chunk o' Mammoth, 1x Northern Spices", ----- Spiced Mammoth Treats
            "1x Nettlefish, 1x Northern Spices", ----------- Spicy Blue Nettlefish
            "1x Fangtooth Herring, 1x Northern Spices", ---- Spicy Fried Herring
            "1x Shoveltusk Flank, 1x Northern Spices" ------ Tracker Snacks
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {
            "Gigantic Feast",
            "Small Feast",
            "Blackened Dragonfin",
        };
        shouldCraftRecipe = {
            "1x Northern Spices, 2x Chunk o' Mammoth, 2x Deep Sea Monsterbelly, 2x Rockfin Grouper", -- Gigantic Feast
            "1x Northern Spices, 2x Glacial Salmon, 2x Nettlefish, 2x Rhino Meat", -------------------- Small Feast
            "1x Dragonfin Angelfish, 1x Northern Spices" ---------------------------------------------- Blackened Dragonfin
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Cooking module|r');
