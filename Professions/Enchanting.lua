local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;


addonTable.getEnchantingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 2 then -- 1
        shouldCraft = {"Runed Copper Rod"};
        shouldCraftRecipe = {"1x Copper Rod, 1x Strange Dust, 1x Magic Essence"};
    elseif rank > 1 and rank < 50 then -- 2-49
        shouldCraft = {"Enchant Bracer - Minor Health"};
        shouldCraftRecipe = {"1x Strange Dust"};
    elseif rank > 49 and rank < 90 then -- 50-89
        shouldCraft = {"Enchant Bracer - Minor Health"};
        shouldCraftRecipe = {"1x Strange Dust"};
    elseif rank > 89 and rank < 100 then -- 90-99
        shouldCraft = {"Enchant Bracer - Minor Stamina"};
        shouldCraftRecipe = {"3x Strange Dust"};
    elseif rank > 99 and rank < 101 then -- 100
        shouldCraft = {"Runed Silver Rod"};
        shouldCraftRecipe = {"1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod"};
    elseif rank > 100 and rank < 110 then --101-109
        shouldCraft = {"Greater Magic Wand"};
        shouldCraftRecipe = {"1x Simple Wood, 1x Greater Magic Essence"};
    elseif rank > 109 and rank < 135 then -- 110-134
        shouldCraft = {"Enchant Cloak - Minor Agility"}; -- bougth from vendor
        shouldCraftRecipe = {"1x Lesser Astral Essence"};
    elseif rank > 134 and rank < 155 then -- 135-154
        shouldCraft = {"Enchant Bracer - Lesser Stamina"};
        shouldCraftRecipe = {"2x Soul Dust"};
    elseif rank > 154 and rank < 156 then -- 155
        shouldCraft = {"Runed Golden Rod"};
        shouldCraftRecipe = {"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod"};
    elseif rank > 155 and rank < 185 then -- 156-184
        shouldCraft = {"Enchant Bracer - Lesser Strength"}; -- bought from vendor
        shouldCraftRecipe = {"2x Soul Dust"};
    elseif rank > 184 and rank < 219 then -- 185-218
        shouldCraft = {"Enchant Bracer - Strength"};
        shouldCraftRecipe = {"1x Vision Dust"};
    elseif rank > 218 and rank < 220 then -- 219
        shouldCraft = {"Runed Truesilver Rod"};
        shouldCraftRecipe = {"1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod"};
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {"Enchant Cloak - Greater Defense"};
        shouldCraftRecipe = {"3x Vision Dust"};
    elseif rank > 224 and rank < 230 then -- 225-229
        shouldCraft = {"Enchant Gloves - Agility"};
        shouldCraftRecipe = {"1x Lesser Nether Essence, 1x Vision Dust"};
    elseif rank > 229 and rank < 235 then -- 230-234
        shouldCraft = {"Enchant Boots - Stamina"};
        shouldCraftRecipe = {"5x Vision Dust"};
    elseif rank > 234 and rank < 240 then -- 235-239
        shouldCraft = {"Enchant Chest - Superior Health"};
        shouldCraftRecipe = {"6x Vision Dust"};
    elseif rank > 239 and rank < 250 then -- 240-249
        shouldCraft = {"Enchant Boots - Lesser Accuracy"};
        shouldCraftRecipe = {"4x Vision Dust, 1x Lesser Nether Essence"};
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {"Lesser Mana Oil"};
        shouldCraftRecipe = {"3x Dream Dust, 2x Purple Lotus, 1x Crystal Vial"};
    elseif rank > 259 and rank < 265 then -- 260-264
        shouldCraft = {"Enchant Bracer - Greater Intellect"};
        shouldCraftRecipe = {"5x Lesser Eternal Essence"};
    elseif rank > 264 and rank < 299 then -- 265-298
        shouldCraft = {"Enchant Shield - Greater Stamina"}; -- bought from vendor
        shouldCraftRecipe = {"5x Dream Dust"};
    elseif rank > 298 and rank < 300 then -- 299
        shouldCraft = {"Runed Arcanite Rod"};
        shouldCraftRecipe = {"1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard"};
    elseif rank > 299 and rank < 301 then -- 300
        shouldCraft = {"Runed Fel Iron Rod"};
        shouldCraftRecipe = {"1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod"};
    elseif rank > 300 and rank < 310 then -- 301-309
        shouldCraft = {"Enchant Bracer - Assault"};
        shouldCraftRecipe = {"6x Arcane Dust"};
    elseif rank > 309 and rank < 320 then -- 310-319
        shouldCraft = {"Enchant Bracer - Brawn"};
        shouldCraftRecipe = {"6x Arcane Dust"};
    elseif rank > 319 and rank < 330 then --320-329
        shouldCraft = {"Enchant Gloves - Assault"};
        shouldCraftRecipe = {"8x Arcane Dust"};
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {"Enchant Shield - Major Stamina"};
        shouldCraftRecipe = {"15x Arcane Dust"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {"Enchant Shield - Resilience"};
        shouldCraftRecipe = {"1x Large Prismatic Shard, 4x Lesser Planar Essence"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {"Superior Wizard Oil"};
        shouldCraftRecipe = {"3x Arcane Dust, 1x Nightmare Vine, 1x Crystal Vial"};
    elseif rank > 349 and rank < 351 then -- 350
        shouldCraft = {"Runed Adamantite Rod"};
        shouldCraftRecipe = {"1x Adamantite Rod. 8x Greater Planar Essence, 8x Large Prismatic Shard, 1x Primal Might, 1x Runed Fel Iron Rod"};
    elseif rank > 350 and rank < 360 then -- 351-359
        shouldCraft = {"Enchant Cloak - Speed"};
        shouldCraftRecipe = {"6x Infinite Dust"};
    elseif rank > 359 and rank < 375 then -- 360-374
        shouldCraft = {"Enchant Bracers - Striking"};
        shouldCraftRecipe = {"6x Infinite Dust"};
    elseif rank > 374 and rank < 376 then -- 375
        shouldCraft = {"Runed Eternium Rod"};
        shouldCraftRecipe = {"1x Eternium Rod, 6x Greater Planar Essence, 6x Arcane Dust, 1x Runed Adamantite Rod"};
    elseif rank > 375 and rank < 380 then -- 376-379
        shouldCraft = {"Enchant Bracers - Striking"};
        shouldCraftRecipe = {"6x Infinite Dust"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {"Enchant Bracers - Exceptional Intellect"};
        shouldCraftRecipe = {"5x Infinite Dust"};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {"Enchant Boots - Icewalker"};
        shouldCraftRecipe = {"8x Infinite Dust, 1x Crystallized Water"};
    elseif rank > 394 and rank < 410 then -- 395-409
        shouldCraft = {"Enchant Cloak – Superior Agility"};
        shouldCraftRecipe = {"0x Infinite Dust."};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {"Enchant Gloves - Expertise"};
        shouldCraftRecipe = {"12x Infinite Dust"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {"Enchant Boots - Greater Spirit"};
        shouldCraftRecipe = {"10x Infinite Dust, 1x Greater Cosmic Essence."};
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {"Enchant Chest - Greater Mana Restoration"};
        shouldCraftRecipe = {"4x Infinite Dust, 4x Greater Cosmic Essence"};
    elseif rank > 424 and rank < 426 then -- 425
        shouldCraft = {"Runed Titanium Rod"};
        shouldCraftRecipe = {"1x Titanium Rod, 12x Infinite Dust, 4x Greater Cosmic Essence,2x Dream Shard, 1x Runed Eternium Rod"};
    elseif rank > 425 and rank < 440 then -- 426-439
        shouldCraft = {
            "Enchant Chest - Super Health",
            "Enchant Weapon - Icebreaker"
        };
        shouldCraftRecipe = {
            "20x Infinite Dust, 4x Greater Cosmic Essence", --- Enchant Chest - Super Health
            "4x Dream Shard, 4x Eternal Fire" ----------------- Enchant Weapon - Icebreaker
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {"Enchant Boots - Greater Assault"};
        shouldCraftRecipe = {"4x Greater Cosmic Essence, 4x Dream Shard"};
    end
    return shouldCraft, shouldCraftRecipe;
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Enchanting module|r");
