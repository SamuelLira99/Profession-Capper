addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 30 then -- 1-29
        shouldCraft = {"Rough Sharpening Stone"};
        shouldCraftRecipe = {"1x Rough Stone"};
    elseif rank > 29 and rank < 65 then -- 30-64
        shouldCraft = {"Rough Grinding Stone"};
        shouldCraftRecipe = {"2x Rough Stone"};
    elseif rank > 64 and rank < 75 then -- 65-74
        shouldCraft = {"Copper Chain Belt"};
        shouldCraftRecipe = {"6x Copper Bar"};
    elseif rank > 74 and rank < 87 then -- 75-86
        shouldCraft = {"Coarse Grinding Stone"};
        shouldCraftRecipe = {"2x Coarse Stone"};
    elseif rank > 86 and rank < 100 then -- 87-99
        shouldCraft = {"Runed Copper Belt"};
        shouldCraftRecipe = {"10x Copper Bar"};
    elseif rank > 99 and rank < 105 then -- 100-104
        shouldCraft = {"Silver Rod"};
        shouldCraftRecipe = {"1x Silver Bar, 2x Rough Grinding Stone"};
    elseif rank > 104 and rank < 125 then -- 105-124
        shouldCraft = {"Rough Bronze Leggings"};
        shouldCraftRecipe = {"6x Bronze Bar"};
    elseif rank > 124 and rank < 150 then -- 125-149
        shouldCraft = {"Heavy Grinding Stone"};
        shouldCraftRecipe = {"3x Heavy Stone"};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {"Golden Rod"};
        shouldCraftRecipe = {"1x Gold Bar, 2x Coarse Grinding Stone"};
    elseif rank > 154 and rank < 165 then -- 155-164
        shouldCraft = {"Green Iron Leggings"};
        shouldCraftRecipe = {"8x Iron Bar, 1x Heavy Grinding Stone, 1x Green Dye"};
    elseif rank > 164 and rank < 190 then -- 165-189
        shouldCraft = {"Green Iron Bracers"};
        shouldCraftRecipe = {"6x Iron Bar, 1x Green Dye"};
    elseif rank > 189 and rank < 200 then -- 190-199
        shouldCraft = {"Golden Scale Bracers"};
        shouldCraftRecipe = {"5x Steel Bar, 2x Heavy Grinding Stone"};
    elseif rank > 199 and rank < 205 then -- 200-204
        shouldCraft = {"Truesilver Rod"};
        shouldCraftRecipe = {"1x Truesilver Bar, 1x Heavy Grinding Stone"};
    elseif rank > 204 and rank < 210 then -- 205-209
        shouldCraft = {"Solid Grinding Stone"};
        shouldCraftRecipe = {"4x Solid Stone"};
    elseif rank > 209 and rank < 225 then -- 210-224
        shouldCraft = {"Heavy Mithril Gauntlet"};
        shouldCraftRecipe = {"6x Mithril Bar, 4x Mageweave Cloth"};
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {"Mithril Scale Bracers"};
        shouldCraftRecipe = {"8x Mithril Bar"};
    elseif rank > 234 and rank < 250 then -- 235-249
        shouldCraft = {
            "Mithril Coif",
            "Mithril Spurs"
        };
        shouldCraftRecipe = {
            "10x Mithril Bar, 6x Mageweave Cloth", ----- Mithril Coif
            "4x Mithril Bar, 3x Solid Grinding Stone" -- Mithril Spurs
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {"Dense Sharpening Stone"};
        shouldCraftRecipe = {"1x Dense Stone"};
    elseif rank > 259 and rank < 275 then -- 260-274
        shouldCraft = {"Thorium Bracers"};
        shouldCraftRecipe = {"8x Thorium Bar"};
    elseif rank > 274 and rank < 280 then -- 275-279
        shouldCraft = {"Arcanite Rod"};
        shouldCraftRecipe = {"3x Arcanite Bar, 1x Dense Grinding Stone"};
    elseif rank > 279 and rank < 290 then -- 280-289
        shouldCraft = {"Imperial Plate Bracers"};
        shouldCraftRecipe = {"12x Thorium Bar"};
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
            "Thorium Boots",
            "Thorium Helm"
        };
        shouldCraftRecipe = {
            "12x Thorium Bar, 8x Rugged Leather", -- Thorium Boots
            "12x Thorium Bar, 1x Star Ruby" -------- Thorium Helm
        };
    elseif rank > 299 and rank < 305 then -- 300-304
        shouldCraft = {"Fel Weightstone"};
        shouldCraftRecipe = {"1x Fel Iron Bar, 1x Netherweave Cloth"};
    elseif rank > 304 and rank < 315 then -- 305-314
        shouldCraft = {"Fel Iron Plate Belt"};
        shouldCraftRecipe = {"4x Fel Iron Bar"};
    elseif rank > 314 and rank < 320 then -- 315-319
        shouldCraft = {"Fel Iron Chain Gloves"};
        shouldCraftRecipe = {"5x Fel Iron Bar"};
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {"Fel Iron Plate Boots"};
        shouldCraftRecipe = {"6x Fel Iron Bar"};
    elseif rank > 324 and rank < 330 then -- 325-329
        shouldCraft = {"Lesser Rune of Warding"};
        shouldCraftRecipe = {"1x Adamantite Bar"};
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {"Fel Iron Breastplate"};
        shouldCraftRecipe = {"10x Fel Iron Bar"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {"Adamantite Cleaver"};
        shouldCraftRecipe = {"8x Adamantite Bar"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {"Lesser Ward of Shielding"};
        shouldCraftRecipe = {"1x Adamantite Bar"};
    elseif rank > 349 and rank < 360 then -- 350-359
        shouldCraft = {
            "Cobalt Boots",
            "Cobalt Belt"
        };
        shouldCraftRecipe = {
            "4x Cobalt Bar", -- Cobalt Boots
            "4x Cobalt Bar" --- Cobalt Belt
        };
    elseif rank > 359 and rank < 370 then -- 360-369
        shouldCraft = {
            "Cobalt Triangle Shield",
            "Cobalt Bracers"
        };
        shouldCraftRecipe = {
            "4x Cobalt Bar", -- Cobalt Triangle Shield
            "4x Cobalt Bar" --- Cobalt Bracers
        };
    elseif rank > 369 and rank < 375 then -- 370-374
        shouldCraft = {
            "Cobalt Legplates",
            "Cobalt Helm"
        };
        shouldCraftRecipe = {
            "5x Cobalt Bar", -- Cobalt Legplates
            "5x Cobalt Bar" --- Cobalt Helm
        };
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {"Cobalt Gauntlets"};
        shouldCraftRecipe = {"5x Cobalt Bar"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {"Spiked Cobalt Boots"};
        shouldCraftRecipe = {"7x Cobalt Bar"};
    elseif rank > 384 and rank < 390 then -- 385-389
        shouldCraft = {"Sure-fire Shuriken"};
        shouldCraftRecipe = {"7x Cobalt Bar"};
    elseif rank > 389 and rank < 395 then -- 390-394
        shouldCraft = {"Notched Cobalt War Axe"};
        shouldCraftRecipe = {"10x Cobalt Bar"};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {"Brilliant Saronite Belt"};
        shouldCraftRecipe = {"6x Cobalt Bar, 5x Saronite Bar"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {"Horned Cobalt Helm"};
        shouldCraftRecipe = {"8x Cobalt Bar"};
    elseif rank > 404 and rank < 415 then -- 405-414
        shouldCraft = {"Deadly Saronite Dirk"};
        shouldCraftRecipe = {"7x Saronite Bar, 2x Cristalized Air"};
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {"Eternal Belt Buckle"};
        shouldCraftRecipe = {"4x Saronite Bar, 1x Eternal Earth, 1x Eternal Water, 1x Eternal Shadow"};
    elseif rank > 424 and rank < 430 then -- 425-429
        shouldCraft = {"Titanium Weapon Chain"};
        shouldCraftRecipe = {"2x Saronite Bar, 1x Titanium Bar"};
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {"Savage Saronite Hauberk"};
        shouldCraftRecipe = {"14x Saronite Bar, 1x Eternal Earth"};
    elseif rank > 434 and rank < 440 then -- 435-439
        shouldCraft = {"Daunting Legplates"};
        shouldCraftRecipe = {"14x Saronite Bar, 1x Eternal Earth"};
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            "Daunting Legplates",
            "Tempered Titansteel Treads",
            "Brilliant Titansteel Treads",
            "Spiked Titansteel Treads",
            "Titansteel Shield Wall",
            "Tempered Titansteel Helm",
            "Brilliant Titansteel Helm",
            "Spiked Titansteel Helm",
            "Titansteel Spellblade"
        };
        shouldCraftRecipe = {
            "14x Saronite Bar, 1x Eternal Earth", ----------------- Daunting Legplates
            "4x Saronite Bar, 3x Titansteel Bar, 1x Frozen Orb", -- Tempered Titansteel Treads
            "4x Saronite Bar, 3x Titansteel Bar, 1x Frozen Orb", -- Brilliant Titansteel Treads
            "4x Saronite Bar, 3x Titansteel Bar, 1x Frozen Orb", -- Spiked Titansteel Treads
            "4x Saronite Bar, 3x Titansteel Bar, 1x Frozen Orb", -- Titansteel Shield Wall
            "4x Saronite Bar, 4x Titansteel Bar, 1x Frozen Orb", -- Tempered Titansteel Helm
            "4x Saronite Bar, 4x Titansteel Bar, 1x Frozen Orb", -- Brilliant Titansteel Helm
            "4x Saronite Bar, 4x Titansteel Bar, 1x Frozen Orb", -- Spiked Titansteel Helm
            "6x Titansteel Bar, 6x Infinite Dust, 2x Frozen Orb" -- Titansteel Spellblade
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Blacksmithing module|r');
