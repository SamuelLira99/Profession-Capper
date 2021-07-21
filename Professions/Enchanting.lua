local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;


addonTable.getEnchantingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 2 then -- 1
        shouldCraft = {"Runed Copper Rod"};
        shouldCraftRecipe = {"1x Copper Rod, 1x Strange Dust, 1x Lesser Magic Essence"};
    elseif rank > 1 and rank < 10 then -- 2-9
        shouldCraft = {
            "Enchant Bracer - Minor Health",
            "Runed Copper Rod"
        };
        shouldCraftRecipe = {
            "1x Strange Dust", ----------------------------------------- Enchant Bracer - Minor Health
            "1x Copper Rod, 1x Strange Dust, 1x Lesser Magic Essence" -- Runed Copper Rod
        };
    elseif rank > 9 and rank < 15 then -- 10-14
        shouldCraft = {
            "Enchant Bracer - Minor Health"
        };
        shouldCraftRecipe = {
            "1x Strange Dust", -- Enchant Bracer - Minor Health
        };
    elseif rank > 14 and rank < 20 then -- 15-19
        shouldCraft = {
            "Enchant Bracer - Minor Health",
            "Enchant Chest - Minor Health"
        };
        shouldCraftRecipe = {
            "1x Strange Dust", -- Enchant Bracer - Minor Health
            "1x Strange Dust" --- Enchant Chest - Minor Health
        };
    elseif rank > 19 and rank < 50 then -- 20-49
        shouldCraft = {
            "Enchant Bracer - Minor Health",
            "Enchant Chest - Minor Health",
            "Enchant Chest - Minor Mana"
        };
        shouldCraftRecipe = {
            "1x Strange Dust", --------- Enchant Bracer - Minor Health
            "1x Strange Dust", --------- Enchant Chest - Minor Health
            "1x Lesser Magic Essence" -- Enchant Chest - Minor Mana
        };
    elseif rank > 49 and rank < 60 then -- 50-59
        shouldCraft = {
            "Enchant Bracer - Minor Health",
            "Enchant Chest - Minor Health",
            "Enchant Chest - Minor Mana",
            "Enchant Bracer - Minor Stamina"
        };
        shouldCraftRecipe = {
            "1x Strange Dust", ---------- Enchant Bracer - Minor Health
            "1x Strange Dust", ---------- Enchant Chest - Minor Health
            "1x Lesser Magic Essence", -- Enchant Chest - Minor Mana
            "3x Strange Dust" ----------- Enchant Bracer - Minor Stamina
        };
    elseif rank > 59 and rank < 90 then -- 60-89
        shouldCraft = {
            "Enchant Bracer - Minor Health",
            "Enchant Chest - Minor Health",
            "Enchant Chest - Minor Mana",
            "Enchant Bracer - Minor Stamina",
            "Enchant Bracer - Minor Spirit"
        };
        shouldCraftRecipe = {
            "1x Strange Dust", ---------- Enchant Bracer - Minor Health
            "1x Strange Dust", ---------- Enchant Chest - Minor Health
            "1x Lesser Magic Essence", -- Enchant Chest - Minor Mana
            "3x Strange Dust", ---------- Enchant Bracer - Minor Stamina
            "2x Lesser Magic Essence" --- Enchant Bracer - Minor Spirit
        };
    elseif rank > 89 and rank < 100 then -- 90-99
        shouldCraft = {
            "Enchant Chest - Minor Mana",
            "Enchant Bracer - Minor Spirit",
            "Enchant Bracer - Minor Stamina"
        };
        shouldCraftRecipe = {
            "1x Lesser Magic Essence", -- Enchant Chest - Minor Mana
            "2x Lesser Magic Essence", -- Enchant Bracer - Minor Spirit
            "3x Strange Dust" ----------- Enchant Bracer - Minor Stamina
        };
    elseif rank > 99 and rank < 101 then -- 100
        shouldCraft = {
            "Runed Silver Rod",
            "Enchant Bracer - Minor Spirit",
            "Greater Magic Wand"
        };
        shouldCraftRecipe = {
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
            "2x Lesser Magic Essence", -------------------------------------------------------- Enchant Bracer - Minor Spirit
            "1x Simple Wood, 1x Greater Magic Essence" ---------------------------------------- Greater Magic Wand
        };
    elseif rank > 100 and rank < 110 then -- 101-109
        shouldCraft = {
            "Enchant Bracer - Minor Spirit",
            "Greater Magic Wand",
            "Runed Silver Rod"
        };
        shouldCraftRecipe = {
            "2x Lesser Magic Essence", ------------------------------------------------------- Enchant Bracer - Minor Spirit
            "1x Simple Wood, 1x Greater Magic Essence", -------------------------------------- Greater Magic Wand
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod" -- Runed Silver Rod
        };
    elseif rank > 109 and rank < 135 then -- 110-134
        shouldCraft = {
            "Enchant Cloak - Minor Agility", -- bougth from vendor
            "Enchant Shield - Minor Stamina",
            "Enchant Bracer - Minor Spirit",
            "Enchant Bracer - Minor Strength",
            "Runed Silver Rod"
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", ------------------------------------------------------- Enchant Cloak - Minor Agility
            "1x Lesser Astral Essence, 2x Strange Dust", -------------------------------------- Enchant Shield - Minor Stamina
            "2x Lesser Magic Essence", -------------------------------------------------------- Enchant Bracer - Minor Spirit
            "5x Strange Dust", ---------------------------------------------------------------- Enchant Bracer - Minor Strength
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
        };
    elseif rank > 134 and rank < 140 then -- 135-139
        shouldCraft = {
            "Enchant Cloak - Minor Agility",
            "Enchant Bracer - Lesser Stamina",
            "Enchant Boots - Minor Stamina",
            "Runed Silver Rod"
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", ------------------------------------------------------ Enchant Cloak - Minor Agility
            "2x Soul Dust", ------------------------------------------------------------------ Enchant Bracer - Lesser Stamina
            "8x Strange Dust", --------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod" -- Runed Silver Rod
        };
    elseif rank > 139 and rank < 150 then -- 140-149
        shouldCraft = {
            "Enchant Cloak - Minor Agility",
            "Enchant Bracer - Lesser Strength",
            "Enchant Bracer - Lesser Stamina",
            "Enchant Boots - Minor Stamina",
            "Runed Silver Rod"
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", ------------------------------------------------------ Enchant Cloak - Minor Agility
            "2x Soul Dust", ------------------------------------------------------------------ Enchant Bracer - Lesser Stamina
            "2x Soul Dust", ------------------------------------------------------------------ Enchant Bracer - Lesser Strength
            "8x Strange Dust", --------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod" -- Runed Silver Rod
        };
    elseif rank > 149 and rank < 155 then -- 155-154
        shouldCraft = {
            "Enchant Cloak - Minor Agility",
            "Enchant Bracer - Lesser Strength",
            "Enchant Bracer - Lesser Stamina",
            "Enchant Boots - Minor Stamina"
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", -- Enchant Cloak - Minor Agility
            "2x Soul Dust", -------------- Enchant Bracer - Lesser Stamina
            "2x Soul Dust", -------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust" ------------ Enchant Boots - Minor Stamina
        };
    elseif rank > 154 and rank < 156 then -- 155
        shouldCraft = {
            "Runed Golden Rod",
            "Enchant Bracer - Lesser Strength",
            "Enchant Bracer - Lesser Stamina",
            "Enchant Boots - Minor Stamina"
        };
        shouldCraftRecipe = {
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod", -- Runed Golden Rod
            "2x Soul Dust", -------------------------------------------------------------------------------------- Enchant Bracer - Lesser Stamina
            "2x Soul Dust", -------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust" ------------------------------------------------------------------------------------ Enchant Boots - Minor Stamina
        };
    elseif rank > 155 and rank < 165 then -- 156-164
        shouldCraft = {
            "Enchant Bracer - Lesser Strength",
            "Enchant Boots - Minor Stamina",
            "Runed Golden Rod"
        };
        shouldCraftRecipe = {
            "2x Soul Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust", ---------------------------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod" -- Runed Golden Rod
        };
    elseif rank > 164 and rank < 180 then -- 165-179
        shouldCraft = {
            "Enchant Bracer - Spirit",
            "Enchant Bracer - Lesser Strength",
            "Enchant Boots - Minor Stamina",
            "Runed Golden Rod"
        };
        shouldCraftRecipe = {
            "1x Lesser Mystic Essence", ------------------------------------------------------------------------- Enchant Bracer - Spirit
            "2x Soul dust", ------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust", ---------------------------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod" -- Runed Golden Rod
        };
    elseif rank > 179 and rank < 184 then -- 180-185
        shouldCraft = {
            "Enchant Bracer - Strength",
            "Enchant Bracer - Spirit",
            "Enchant Bracer - Lesser Strength",
            "Enchant Boots - Minor Stamina",
            "Runed Golden Rod"
        };
        shouldCraftRecipe = {
            "1x Vision dust", ----------------------------------------------------------------------------------- Enchant Bracer - Strength
            "1x Lesser Mystic Essence", ------------------------------------------------------------------------- Enchant Bracer - Spirit
            "2x Soul dust", ------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust", ---------------------------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod" -- Runed Golden Rod
        };
    elseif rank > 184 and rank < 200 then -- 185-199
        shouldCraft = {
            "Enchant Bracer - Strength",
            "Enchant Bracer - Spirit",
            "Enchant Chest - Greater Health"
        };
        shouldCraftRecipe = {
            "1x Vision Dust", ------------ Enchant Bracer - Strength
            "1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
            "3x Soul Dust" --------------- Enchant Chest - Greater Health
        };
    elseif rank > 199 and rank < 201 then -- 200
        shouldCraft = {
            "Runed Truesilver Rod",
            "Enchant Bracer - Strength",
            "Enchant Bracer - Lesser Strength"
        };
        shouldCraftRecipe = {
            "1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod", -- Runed Truesilver Rod
            "1x Vision Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Strength
            "2x Soul Dust" ---------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
        };
    elseif rank > 200 and rank < 205 then -- 201-204
        shouldCraft = {
            "Enchant Bracer - Strength",
            "Enchant Bracer - Spirit",
            "Enchant Bracer - Lesser Strength",
            "Runed Truesilver Rod"
        };
        shouldCraftRecipe = {
            "1x Vision Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Strength
            "1x Lesser Mystic Essence", --------------------------------------------------------------------------- Enchant Bracer - Spirit
            "2x Soul Dust", --------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod", -- Runed Truesilver Rod
        };
    elseif rank > 204 and rank < 220 then -- 205-219
        shouldCraft = {
            "Enchant Cloak - Resistance",
            "Enchant Bracer - Strength",
            "Enchant Bracer - Spirit"
        };
        shouldCraftRecipe = {
            "1x Nether Essence", -------- Enchant Cloak - Resistance
            "1x Vision Dust", ----------- Enchant Bracer - Strength
            "1x Lesser Mystic Essence" -- Enchant Bracer - Spirit
        };
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {
            "Enchant Cloak - Resistance",
            "Enchant Cloak - Greater Defense",
            "Enchant Bracer - Spirit",
            "Enchant Boots - Lesser Stamina"
        };
        shouldCraftRecipe = {
            "1x Lesser Nether Essence", -- Enchant Cloak - Resistance
            "3x Vision Dust", ------------ Enchant Cloak - Greater Defense
            "1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
            "4x Soul Dust" --------------- Enchant Boots - Lesser Stamina
        };
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {
            "Enchant Cloak - Resistance",
            "Enchant Cloak - Greater Defense"
        };
        shouldCraftRecipe = {
            "1x Lesser Nether Essence", ----------------- Enchant Cloak - Resistance
            "3x Vision Dust"  --------------------------- Enchant Cloak - Greater Defense
        };
    elseif rank > 234 and rank < 240 then -- 235-239
        shouldCraft = {
            "Enchant Cloak - Lesser Agility",
            "Enchant Chest - Superior Health"
        };
        shouldCraftRecipe = {
            "2x Lesser Nether Essence", -- Enchant Cloak - Lesser Agility
            "6x Vision Dust" ------------- Enchant Chest - Superior Health
        };
    elseif rank > 239 and rank < 250 then -- 240-249
        shouldCraft = {
            "Enchant Cloak - Lesser Agility",
            "Enchant Boots - Lesser Accuracy",
            "Enchant Chest - Superior Health"
        };
        shouldCraftRecipe = {
            "2x Lesser Nether Essence", ------------------ Enchant Cloak - Lesser Agility
            "4x Vision Dust, 1x Lesser Nether Essence", -- Enchant Boots - Lesser Accuracy
            "6x Vision Dust" ----------------------------- Enchant Chest - Superior Health
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {
            "Enchant Bracer - Greater Stamina",
            "Enchant Bracer - Greater Strength",
            "Lesser Mana Oil"
        };
        shouldCraftRecipe = {
            "5x Dream Dust", ----------------------------------- Enchant Bracer - Greater Stamina
            "2x Dream Dust, 1x Greater Nether Essence", -------- Enchant Bracer - Greater Strength
            "3x Dream Dust, 2x Purple Lotus, 1x Crystal Vial" -- Lesser Mana Oil
        };
    elseif rank > 259 and rank < 265 then -- 260-264
        shouldCraft = {
            "Enchant Bracer - Greater Intellect",
            "Enchant Bracer - Greater Stamina",
            "Enchant Bracer - Greater Strength"
        };
        shouldCraftRecipe = {
            "3x Lesser Eternal Essence", ---------------- Enchant Bracer - Greater Intellect
            "5x Dream Dust", ---------------------------- Enchant Bracer - Greater Stamina
            "2x Dream Dust, 1x Greater Nether Essence" -- Enchant Bracer - Greater Strength
        };
    elseif rank > 264 and rank < 299 then -- 265-298
        shouldCraft = {"Enchant Shield - Greater Stamina"}; -- bought from vendor
        shouldCraftRecipe = {"5x Dream Dust"};
    elseif rank > 298 and rank < 300 then -- 299
        shouldCraft = {
            "Runed Arcanite Rod",
            "Runed Fel Iron Rod",
            "Enchant Bracer - Assault",
            "Enchant Boots - Greater Stamina"
        };
        shouldCraftRecipe = {
            "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard", -- Runed Arcanite Rod
            "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod", ----------------------- Runed Fel Iron Rod
            "6x Arcane Dust", ----------------------------------------------------------------------------------------------------- Enchant Bracer - Assault
            "5x Dream Dust" ------------------------------------------------------------------------------------------------------- Enchant Boots - Greater Stamina
        };
    elseif rank > 299 and rank < 301 then -- 300
        shouldCraft = {
            "Runed Fel Iron Rod",
            "Runed Arcanite Rod",
            "Enchant Bracer - Assault",
            "Enchant Boots - Greater Stamina"
        };
        shouldCraftRecipe = {
            "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod", ----------------------- Runed Fel Iron Rod
            "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard", -- Runed Arcanite Rod
            "6x Arcane Dust", ----------------------------------------------------------------------------------------------------- Enchant Bracer - Assault
            "5x Dream Dust" ------------------------------------------------------------------------------------------------------- Enchant Boots - Greater Stamina
        };
    elseif rank > 300 and rank < 310 then -- 301-309
        shouldCraft = {
            "Enchant Bracer - Assault",
            "Enchant Chest - Major Mana",
            "Runed Fel Iron Rod",
            "Runed Arcanite Rod"
        };
        shouldCraftRecipe = {
            "6x Arcane Dust", ---------------------------------------------------------------------------------------------------- Enchant Bracer - Assault
            "8x Illusion Dust", -------------------------------------------------------------------------------------------------- Enchant Chest - Major Mana
            "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod", ---------------------- Runed Fel Iron Rod
            "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard" -- Runed Arcanite Rod
        };
    elseif rank > 309 and rank < 320 then -- 310-319
        shouldCraft = {"Enchant Bracer - Brawn"};
        shouldCraftRecipe = {"6x Arcane Dust"};
    elseif rank > 319 and rank < 330 then --320-329
        shouldCraft = {
            "Enchant Gloves - Assault",
            "Enchant Cloak - Major Armor"
        };
        shouldCraftRecipe = {
            "8x Arcane Dust", -- Enchant Gloves - Assault
            "8x Arcane Dust" --- Enchant Cloak - Major Armor
        };
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {"Enchant Shield - Major Stamina"};
        shouldCraftRecipe = {"15x Arcane Dust"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {
            "Enchant Shield - Resilience",
            "Enchant Shield - Major Stamina"
        };
        shouldCraftRecipe = {
            "1x Large Prismatic Shard, 4x Lesser Planar Essence", -- Enchant Shield - Resilience
            "15x Arcane Dust" -------------------------------------- Enchant Shield - Major Stamina
        };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {"Superior Wizard Oil"};
        shouldCraftRecipe = {"3x Arcane Dust, 1x Nightmare Vine, 1x Crystal Vial"};
    elseif rank > 349 and rank < 351 then -- 350
        shouldCraft = {
            "Runed Adamantite Rod",
            "Enchant Cloak - Speed",
            "Enchant Chest - Exceptional Mana"
        };
        shouldCraftRecipe = {
            "1x Adamantite Rod. 8x Greater Planar Essence, 8x Large Prismatic Shard, 1x Primal Might, 1x Runed Fel Iron Rod", -- Runed Adamantite Rod
            "6x Infinite Dust", ------------------------------------------------------------------------------------------------ Enchant Cloak - Speed
            "6x Infinite Dust" ------------------------------------------------------------------------------------------------- Enchant Chest - Exceptional Mana
        };
    elseif rank > 350 and rank < 360 then -- 351-359
        shouldCraft = {
            "Enchant Cloak - Speed",
            "Enchant Chest - Exceptional Mana",
            "Runed Adamantite Rod"
        };
        shouldCraftRecipe = {
            "6x Infinite Dust", ----------------------------------------------------------------------------------------------- Enchant Cloak - Speed
            "6x Infinite Dust", ----------------------------------------------------------------------------------------------- Enchant Chest - Exceptional Mana
            "1x Adamantite Rod. 8x Greater Planar Essence, 8x Large Prismatic Shard, 1x Primal Might, 1x Runed Fel Iron Rod" -- Runed Adamantite Rod
        };
    elseif rank > 359 and rank < 376 then -- 360-375
        shouldCraft = {"Enchant Bracers - Striking"};
        shouldCraftRecipe = {"6x Infinite Dust"};
    elseif rank > 375 and rank < 377 then -- 376
        shouldCraft = {
            "Runed Eternium Rod",
            "Enchant Bracers - Striking"
        };
        shouldCraftRecipe = {
            "1x Eternium Rod, 6x Greater Planar Essence, 6x Arcane Dust, 1x Runed Adamantite Rod", -- Runed Eternium Rod
            "6x Infininte Dust" --------------------------------------------------------------------- Enchant Bracers - Striking
        };
    elseif rank > 376 and rank < 380 then -- 376-379
        shouldCraft = {
            "Enchant Bracers - Striking",
            "Runed Eternium Rod"
        };
        shouldCraftRecipe = {
            "6x Infinite Dust", -------------------------------------------------------------------- Enchant Bracers - Striking
            "1x Eternium Rod, 6x Greater Planar Essence, 6x Arcane Dust, 1x Runed Adamantite Rod" -- Runed Eternium Rod
        };
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {"Enchant Bracers - Exceptional Intellect"};
        shouldCraftRecipe = {"10x Infinite Dust"};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {"Enchant Boots - Icewalker"};
        shouldCraftRecipe = {"8x Infinite Dust, 1x Crystallized Water"};
    elseif rank > 394 and rank < 410 then -- 395-409
        shouldCraft = {
            "Enchant Cloak - Superior Agility",
            "Enchant Chest - Mighty Health"
        };
        shouldCraftRecipe = {
            "9x Infinite Dust", ---------- Enchant Cloak - Superior Agility
            "3x Greater Cosmic Essence" -- Enchant Chest - Mighty Health
        };
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {"Enchant Gloves - Expertise"};
        shouldCraftRecipe = {"12x Infinite Dust"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {
            "Enchant Boots - Greater Spirit",
            "Enchant Gloves - Precision"
        };
        shouldCraftRecipe = {
            "10x Infinite Dust, 1x Greater Cosmic Essence", -- Enchant Boots - Greater Spirit
            "4x Greater Cosmic Essence" ---------------------- Enchant Gloves - Precision
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {
            "Enchant Chest - Greater Mana Restoration" -- last one has 130% skill up chance
            -- "Enchant Gloves - Precision" ----------------- last one has 80% skill up chance
        };
        shouldCraftRecipe = {
            "4x Infinite Dust, 4x Greater Cosmic Essence" -- Enchant Chest - Greater Mana Restoration
            -- "4x Greater Cosmic Essence" --------------------- Enchant Gloves - Precision
        };
    elseif rank > 424 and rank < 426 then -- 425
        shouldCraft = {
            "Runed Titanium Rod",
            "Enchant Cloak - Greater Speed"
        };
        shouldCraftRecipe = {
            "1x Titanium Rod, 12x Infinite Dust, 4x Greater Cosmic Essence,2x Dream Shard, 1x Runed Eternium Rod", -- Runed Titanium Rod
            "16x Infinite Dust, 4x Greater Cosmic Essence", --------------------------------------------------------- Enchant Cloak - Greater Speed
        };
    elseif rank > 425 and rank < 440 then -- 426-439
        shouldCraft = {
            "Enchant Cloak - Greater Speed",
            "Runed Titanium Rod"
        };
        shouldCraftRecipe = {
            "16x Infinite Dust, 4x Greater Cosmic Essence", -------------------------------------------------------- Enchant Cloak - Greater Speed
            "1x Titanium Rod, 12x Infinite Dust, 4x Greater Cosmic Essence,2x Dream Shard, 1x Runed Eternium Rod" -- Runed Titanium Rod
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            "Enchant Boots - Greater Assault",
            "Enchant Cloak - Mighty Armor"
        };
        shouldCraftRecipe = {
            "4x Greater Cosmic Essence, 4x Dream Shard", ---- Enchant Boots - Greater Assault
            "15x Infinite Dust, 2x Greater Cosmic Essence" -- Enchant Cloak - Mighty Armor
        };
    end
    return shouldCraft, shouldCraftRecipe;
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Enchanting module|r");
