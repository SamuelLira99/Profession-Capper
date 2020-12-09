-- Variables

local tradeSkillName, rank, maxLevel; -- variables for currently opened profession frame
local isLinked, name; -- variables to know if you opened your own profession frame or if it's a link

local shouldCraft = {"unknown"}; -- varible that will show which recipe one should craft based on current skill level
local shouldCraftRecipe = {"unknown"}; -- variable that will hold the material needed to craft <shouldCraft>
local skillAction = ''; -- variable to define String as "You should <craft/mine/gather/skin> <recipe>"
local craftRecipeOptionsIndex = 1; -- variavle to define index of recipes

-- variable for a next major update
-- local craftingOptions = {} -- table that will hold crafting options and reagents based on current skill level



-- for test in future
-- for i = 1, GetNumTradeSkills() do
--     local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
--     if skillName == 'Frostweave Bag' then
--         DoTradeSkill(i)
--     end
-- end








-- function that determines which recipe you shout craft
------------------------------------------------------------------------------------------------------------

function GetCraftingToDo()
    -- local shouldCraft = ''; -- varible that will show which recipe one should craft based on current skill level
    -- local shouldCraftRecipe = 'unknown'; -- variable that will hold the material needed to craft <shouldCraft>
    -- local skillAction = ''; -- variable to define String as "You should <craft/mine/gather/skin> <recipe>"










--     ********                  **                           **   **
--    /**/////                  /**                          /**  //            *****
--    /**       *******   ***** /**       ******   *******  ****** ** *******  **///**
--    /******* //**///** **///**/******  //////** //**///**///**/ /**//**///**/**  /**
--    /**////   /**  /**/**  // /**///**  *******  /**  /**  /**  /** /**  /**//******
--    /**       /**  /**/**   **/**  /** **////**  /**  /**  /**  /** /**  /** /////**
--    /******** ***  /**//***** /**  /**//******** ***  /**  //** /** ***  /**  *****
--    //////// ///   //  /////  //   //  //////// ///   //    //  // ///   //  /////


    -- Enchanting
    if tradeSkillName == "Enchanting" then
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
            shouldCraft = {"Enchant Chest - Super Health"};
            shouldCraftRecipe = {"20x Infinite Dust, 4x Greater Cosmic Essence"};
        elseif rank > 439 and rank < 450 then -- 440-449
            shouldCraft = {"Enchant Boots - Greater Assault"};
            shouldCraftRecipe = {"4x Greater Cosmic Essence, 4x Dream Shard"};
        elseif shouldCraft == 450 then -- 450
            shouldCraft = {"unknown"};
            shouldCraftRecipe = {"unknown"};
        end
    end -- Enchanting end









--     **********           **  **                 **
--    /////**///           //  /**                //            *****
--        /**      ******   ** /**  ******  ****** ** *******  **///**
--        /**     //////** /** /** **////**//**//*/**//**///**/**  /**
--        /**      ******* /** /**/**   /** /** / /** /**  /**//******
--        /**     **////** /** /**/**   /** /**   /** /**  /** /////**
--        /**    //********/** ***//****** /***   /** ***  /**  *****
--        //      //////// // ///  //////  ///    // ///   //  /////



    -- Tailoring
    if tradeSkillName == "Tailoring" then
        if rank > 0 and rank < 45 then -- 1-44
            shouldCraft = {"Bolt of Linen Cloth"};
            shouldCraftRecipe = {"2x Linen Cloth"};
        elseif rank > 44 and rank < 70 then -- 45-69
            shouldCraft = {"Heavy Linen Gloves"};
            shouldCraftRecipe = {"2x Bolt of Linen Cloth, 1x Coarse Thread"};
        elseif rank > 69 and rank < 75 then -- 70-74
            shouldCraft = {"Reinforced Linen Cape"};
            shouldCraftRecipe = {"2x Bolt of Linen Cloth, 3x Coarse Thread"};
        elseif rank > 74 and rank < 100 then -- 75-99
            shouldCraft = {"Bolt of Woolen Cloth"};
            shouldCraftRecipe = {"3x Wool Cloth"};
        elseif rank > 99 and rank < 110 then -- 100-109
            shouldCraft = {"Bolt of Linen Cloth"};
            shouldCraftRecipe = {"1x Fine Thread"};
        elseif rank > 109 and rank < 125 then -- 110-124
            shouldCraft = {"Double-stitched Woolen Shoulders"};
            shouldCraftRecipe = {"3x Bolt of Woolen Cloth, 2x Fine Thread"};
        elseif rank > 124 and rank < 145 then -- 125-144
            shouldCraft = {"Bolt of Silk Cloth"};
            shouldCraftRecipe = {"4x Silk Cloth"};
        elseif rank > 144 and rank < 160 then -- 145-159
            shouldCraft = {"Azure Silk Hood"};
            shouldCraftRecipe = {"2x Bolt of Silk Cloth, 2x Blue Dye, 1x Fine Thread"};
        elseif rank > 159 and rank < 170 then -- 160-169
            shouldCraft = {"Silk Headband"};
            shouldCraftRecipe = {"3x Bolt of Silk Cloth, 2x Fine Thread"};
        elseif rank > 169 and rank < 175 then -- 170-174
            shouldCraft = {"Formal White Shirt"};
            shouldCraftRecipe = {"3x Bolt of Silk Cloth, 2x Bleach, 1x Fine Thread"};
        elseif rank < 174 and rank < 185 then -- 715-184
            shouldCraft = {"Bolt of Mageweave"};
            shouldCraftRecipe = {"4x Mageweave Cloth"};
        elseif rank > 184 and rank < 200 then -- 185-199
            shouldCraft = {"Crimson Silk Vest"};
            shouldCraftRecipe = {"4x Bolt of Silk Cloth, 2x Fine Thread, 2x Red Dye"};
        elseif rank > 199 and rank < 215 then -- 200-214
            shouldCraft = {"Crimson Silk Pantaloons"};
            shouldCraftRecipe = {"4x Bolt of Silk Cloth, 2x Red Dye, 2x Silken Thread"};
        elseif rank > 214 and rank < 220 then -- 215-219
            shouldCraft = {"Black Mageweave Leggings"};
            shouldCraftRecipe = {"2x Bolt of Mageweave, 3x Silken Thread"};
        elseif rank > 219 and rank < 230 then -- 220-229
            shouldCraft = {"Black Mageweave Gloves"};
            shouldCraftRecipe = {"2x Bolt of Mageweave, 2x Heavy Silken Thread"};
        elseif rank > 229 and rank < 250 then -- 230-249
            shouldCraft = {"Black Mageweave Headband"};
            shouldCraftRecipe = {"3x Bolt of Mageweave, 2x Heavy Silken Thread"};
        elseif rank > 249 and rank < 260 then -- 250-259
            shouldCraft = {"Bolt of Runecloth"};
            shouldCraftRecipe = {"4x Runecloth"};
        elseif rank > 259 and rank < 280 then -- 260-279
            shouldCraft = {"Runecloth Belt"};
            shouldCraftRecipe = {"3x Bolt of Runecloth, 1x Rune Thread"};
        elseif rank > 279 and rank < 295 then -- 280-294
            shouldCraft = {"Runecloth Gloves"};
            shouldCraftRecipe = {"5x Bolt of Runecloth, 2x Rune Thread"};
        elseif rank > 294 and rank < 300 then -- 295-299
            shouldCraft = {"Runecloth Headband"};
            shouldCraftRecipe = {"6x Bolt of Runecloth, 2x Rune Thread"};
        elseif rank > 299 and rank < 325 then -- 300-324
            shouldCraft = {"Bolt of Netherweave"};
            shouldCraftRecipe = {"5x Netherweave Cloth"};
        elseif rank > 324 and rank < 335 then -- 325-334
            shouldCraft = {"Bolt of Imbued Netherweave"};
            shouldCraftRecipe = {"3x Bolt of Netherweave, 2x Arcane Dust"};
        elseif rank > 334 and rank < 345 then -- 335-344
            shouldCraft = {"Netherweave Boots"};
            shouldCraftRecipe = {"6x Bolts of Netherweave, 2x Knothide Leather, 1x Rune Thread"};
        elseif rank > 344 and rank < 350 then -- 345-349
            shouldCraft = {"Netherweave Tunic"};
            shouldCraftRecipe = {"8x Bolts of Netherweave, 2x Rune Thread"};
        elseif rank > 349 and rank < 375 then -- 350-374
            shouldCraft = {"Bolt of Frostweave"};
            shouldCraftRecipe = {"5x Frostweave Cloth"};
        elseif rank > 374 and rank < 380 then -- 375-379
            shouldCraft = {"Frostwoven Belt"};
            shouldCraftRecipe = {"3x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 379 and rank < 385 then -- 380-384
            shouldCraft = {"Frostwoven Boots"};
            shouldCraftRecipe = {"4x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 384 and rank < 395 then -- 385-394
            shouldCraft = {"Frostwoven Cowl"};
            shouldCraftRecipe = {"5x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 394 and rank < 400 then -- 395-399
            shouldCraft = {"Duskweave Belt"};
            shouldCraftRecipe = {"7x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 399 and rank < 405 then -- 400-404
            shouldCraft = {"Bolt of Imbued Frostweave"};
            shouldCraftRecipe = {"2x Bolt of Frostweave, 2x Infinite Dust"};
        elseif rank > 404 and rank < 410 then -- 405-409
            shouldCraft = {"Duskweave Wristwraps"};
            shouldCraftRecipe = {"8x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 409 and rank < 415 then -- 410-414
            shouldCraft = {"Duskweave Gloves"};
            shouldCraftRecipe = {"9x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 414 and rank < 425 then -- 415-424
            shouldCraft = {"Duskweave Boots"};
            shouldCraftRecipe = {"10x Bolt of Frostweave, 1x Eternium Thread"};
        elseif rank > 424 and rank < 450 then -- 425-449
            shouldCraft = {"Frostweave Bag"};
            shouldCraftRecipe = {"6x Bolt of Imbued Frostweave, 2x Eternium Thread"};
        elseif rank == 450 then
            shouldCraft = {"unknown"};
            shouldCraftRecipe = {"unknown"};
        end
    end -- Tailoring end









--         **                             **                            ****   **   **
--        /**                            /**                           /**/   /**  //            *****
--        /**  *****  ***     **  *****  /**  *****  ******  ******   ****** ****** ** *******  **///**
--        /** **///**//**  * /** **///** /** **///**//**//* //////** ///**/ ///**/ /**//**///**/**  /**
--        /**/******* /** ***/**/******* /**/**  //  /** /   *******   /**    /**  /** /**  /**//******
--    **  /**/**////  /****/****/**////  /**/**   ** /**    **////**   /**    /**  /** /**  /** /////**
--    //***** //****** ***/ ///**//****** ***//***** /***   //********  /**    //** /** ***  /**  *****
--    /////   ////// ///    ///  ////// ///  /////  ///     ////////   //      //  // ///   //  /////



    -- Jewelcrafting
    if tradeSkillName == "Jewelcrafting" then
        if rank > 0 and rank < 30 then -- 1-29
            shouldCraft = {"Delicate Copper Wire"};
            shouldCraftRecipe = {"2x Copper Bar"};
        elseif rank > 29 and rank < 50 then -- 30-49
            shouldCraft = {
                "Tigerseye Band",
                "Malachite Pendant"
            };
            shouldCraftRecipe = {
                "1x Tigerseye, 1x Delicate Copper Wire", --Tigerseye Band
                "1x Malachite, 1x Delicate Copper Wire" --Malachite Pendant
            };
        elseif rank > 49 and rank < 80 then -- 50-79
            shouldCraft = {"Bronze Setting"};
            shouldCraftRecipe = {"2x Bronze Bar"};
        elseif rank > 79 and rank < 100 then -- 80-99 # Add alts
            shouldCraft = {
                "Simple Pearl Ring",
                "Gloom Band",
                "Ring of Silver Might"
            };
            shouldCraftRecipe = {
                "1x Small Lustrous Pearl, 1x Bronze Setting, 2x Copper Bar", --Simple Pearl Ring
                "1x Bronze Setting, 2x Shadowgem, 2x Delicate Copper Wire", --Gloom Band
                "2x Silver Bar" --Ring of Silver Might
            };
        elseif rank > 99 and rank < 110 then -- 100-109
            shouldCraft = {"Ring of Twilight Shadows"};
            shouldCraftRecipe = {"2x Shadowgem, 2x Bronze Bar"};
        elseif rank > 109 and rank < 120 then -- 110-119
            shouldCraft = {"Heavy Stone Statue"};
            shouldCraftRecipe = {"8x Heavy Stone"};
        elseif rank > 119 and rank < 150 then -- 120-149
            shouldCraft = {"Pendant of the Agate Shield"}; -- sold by NPC
            shouldCraftRecipe = {"1x Moss Agate, 1x Bronze Setting"};
        elseif rank > 149 and rank < 180 then -- 150-179
            shouldCraft = {"Mithril Filigree"};
            shouldCraftRecipe = {"2x Mithril Bar"};
        elseif rank > 179 and rank < 200 then -- 180-199
            shouldCraft = {"Engraved Truesilver Ring"};
            shouldCraftRecipe = {"1x Truesilver Bar, 2x Mithril Filigree"};
        elseif rank > 199 and rank < 220 then -- 200-219
            shouldCraft = {"Citrine Ring of Rapid Healing"};
            shouldCraftRecipe = {"1x Citrine, 2x Mithril Bar"};
        elseif rank > 219 and rank < 225 then -- 220-224
            shouldCraft = {"Aquamarine Pendant of the Warrior"};
            shouldCraftRecipe = {"1x Aquamarine, 3x Mithril Filigree"};
        elseif rank > 224 and rank < 245 then -- 225-244
            shouldCraft = {"Thorium Setting"};
            shouldCraftRecipe = {"1x Thorium Bar"};
        elseif rank > 244 and rank < 260 then -- 245-259
            shouldCraft = {"Ruby Pendant of Fire"};
            shouldCraftRecipe = {"1x Star Ruby, 1x Thorium Setting"};
        elseif rank > 259 and rank < 280 then -- 260-279
            shouldCraft = {"Simple Opal Ring"};
            shouldCraftRecipe = {"1x Large Opal, 1x Thorium Setting"};
        elseif rank > 279 and rank < 290 then -- 280-289
            shouldCraft = {
                "Onslaught Ring",
                "Sapphire Pendant of Winter Night"
            };
            shouldCraftRecipe = {
                "1x Powerful Mojo, 1x Essence of Earth, 1x Thorium Setting", --Onslaught Ring
                "10 Blue Sapphire, 10 Essence of Undeath, 10 Thorium Setting" --Sapphire Pendant of Winter Night
            };
        elseif rank > 289 and rank < 300 then -- 290-299
            shouldCraft = {"Emerald Lion Ring"};
            shouldCraftRecipe = {"2x Huge Emerald, 1x Thorium Setting"};
        elseif rank > 299 and rank < 320 then -- 300-319
            shouldCraft = {
                "Teardrop Blood Garnet",
                "Brilliant Golden Draenite",
                "Solid Azure Moonstone",
                "Radiant Deep Peridot",
                "Inscribed Flame Spessarite",
                "Glowing Shadow Draenite",
                "Prismatic Black Diamond"
            };
            shouldCraftRecipe = {
                "1x Blood Garnet",-------Teardrop Blood Garnet
                "1x Golden Draenite",----Brilliant Golden Draenite
                "1x Azure Moonstone",----Solid Azure Moonstone
                "1x Deep Peridot",-------Radiant Deep Peridot
                "1x Flame Spessarite",---Inscribed Flame Spessarite
                "1x Shadow Draenite",----Glowing Shadow Draenite
                "1x Black Diamond"-------Prismatic Black Diamond
            };
        elseif rank > 319 and rank < 325 then -- 320-324
            shouldCraft = {
                "Bold Blood Garnet",
                "Bright Blood Garnet",
                "Gleaming Golden Draenite",
                "Jagged Deep Peridot",
                "Luminous Flame Spessarite",
                "Royal Shadow Draenite",
                "Sparkling Azure Moonstone"
            };
            shouldCraftRecipe = {
                "1x Blood Garnet",-------Bold Blood Garnet
                "1x Blood Garnet",-------Bright Blood Garnet
                "1x Golden Draenite",----Gleaming Golden Draenite
                "1x Deep Peridot", ------Jagged Deep Peridot
                "1x Flame Spessarite",---Luminous Flame Spessarite
                "1x Shadow Draenite",----Royal Shadow Draenite
                "1x Azure Moonstone"-----Sparkling Azure Moonstone

            };
        elseif rank > 324 and rank < 335 then -- 325-334
            shouldCraft = {
                "Mercurial Adamantite",
                "Glinting Flame Spessarite",
                "Runed Blood Garnet",
                "Shifting Shadow Draenite",
                "Thick Golden Draenite",
                "Purified Jaggal Pearl"
            };
            shouldCraftRecipe = {
                "4x Adamantite Powder, 1x Primal Earth",-------Mercurial Adamantite
                "1x Flame Spessarite",-------------------------Glinting Flame Spessarite
                "1x Blood Garnet",-----------------------------Runed Blood Garnet
                "1x Shadow Draenite",--------------------------Shifting Shadow Draenite
                "1x Golden Draenite",--------------------------Thick Golden Draenite
                "1x Jaggal Pearl, 1x Purified Draenic Water"---Purified Jaggal Pearl
            };
        elseif rank > 334 and rank < 340 then -- 335-339
            shouldCraft = {
                "Dazzling Deep Peridot",
                "Delicate Blood Garnet",
                "Potent Flame Spessarite",
                "Rigid Golden Draenite",
                "Sovereign Shadow Draenite",
                "Smooth Golden Draenite"
            }; -- TODO add Delicate Blood Garnet ## Potent Flame Spessarite
            shouldCraftRecipe = {
                "1x Deep Peridot",-------Dazzling Deep Peridot
                "1x Blood Garnet",-------Delicate Blood Garnet
                "1x Flame Spessarite",---Potent Flame Spessarite
                "1x Golden Draenite",----Rigid Golden Draenite
                "1x Shadow Draenite",----Sovereign Shadow Draenite
                "1x Golden Draenite"
            };
        elseif rank > 339 and rank < 350 then -- 340-349
            shouldCraft = {"Heavy Adamantite Ring"};
            shouldCraftRecipe = {"1x Adamantite Bar, 1x Mercurial Adamantite"};
        elseif rank > 349 and rank < 395 then -- 350-394
            shouldCraft = {
                "Bold Bloodstone",
                "Bright Bloodstone",
                "Delicate Bloodstone",
                "Flashing Bloodstone",
                "Fractured Bloodstone",
                "Precise Bloodstone",
                "Runed Bloodstone",
                "Subtle Bloodstone",
                "Lustrous Chalcedony",
                "Solid Chalcedony",
                "Sparkling Chalcedony",
                "Stormy Chalcedony",
                "Dazzling Dark Jade",
                "Enduring Dark Jade",
                "Energized Dark Jade",
                "Forceful Dark Jade",
                "Intricate Dark Jade",
                "Jagged Dark Jade",
                "Lambent Dark Jade",
                "Misty Dark Jade",
                "Opaque Dark Jade",
                "Radiant Dark Jade",
                "Seer's Dark Jade",
                "Shattered Dark Jade",
                "Shining Dark Jade",
                "Steady Dark Jade",
                "Sundered Dark Jade",
                "Tense Dark Jade",
                "Timeless Dark Jade",
                "Turbid Dark Jade",
                "Vivid Dark Jade",
                "Accurate Huge Citrine",
                "Champion's Huge Citrine",
                "Deadly Huge Citrine",
                "Deft Huge Citrine",
                "Durable Huge Citrine",
                "Empowered Huge Citrine",
                "Etched Huge Citrine",
                "Fierce Huge Citrine",
                "Glimmering Huge Citrine",
                "Glinting Huge Citrine",
                "Inscribed Huge Citrine",
                "Lucent Huge Citrine",
                "Luminous Huge Citrine",
                "Potent Huge Citrine",
                "Pristine Huge Citrine",
                "Reckless Huge Citrine",
                "Resolute Huge Citrine",
                "Resplendent Huge Citrine",
                "Stalwart Huge Citrine",
                "Stark Huge Citrine",
                "Veiled Huge Citrine",
                "Wicked Huge Citrine",
                "Balanced Shadow Crystal",
                "Defender's Shadow Crystal",
                "Glowing Shadow Crystal",
                "Guardian's Shadow Crystal",
                "Infused Shadow Crystal",
                "Mysterious Shadow Crystal",
                "Puissant Shadow Crystal",
                "Purified Shadow Crystal",
                "Regal Shadow Crystal",
                "Royal Shadow Crystal",
                "Shifting Shadow Crystal",
                "Sovereign Shadow Crystal",
                "Tenuous Shadow Crystal",
                "Brilliant Sun Crystal",
                "Mystic Sun Crystal",
                "Quick Sun Crystal",
                "Rigid Sun Crystal",
                "Smooth Sun Crystal",
                "Thick Sun Crystal"
            }; -- TODO add note "or any equivalent gem from Bloodstone, Chalcedony, Dark Jade, Huge Citrine, Shadow Crystal, Sun Crystal"
            shouldCraftRecipe = {
                "1x Bloodstone",-------Bold Bloodstone
                "1x Bloodstone",-------Bright Bloodstone
                "1x Bloodstone",-------Delicate Bloodstone
                "1x Bloodstone",-------Flashing Bloodstone
                "1x Bloodstone",-------Fractured Bloodstone
                "1x Bloodstone",-------Precise Bloodstone
                "1x Bloodstone",-------Runed Bloodstone
                "1x Bloodstone",-------Subtle Bloodstone
                "1x Chalcedony",-------Lustrous Chalcedony
                "1x Chalcedony",-------Solid Chalcedony
                "1x Chalcedony",-------Sparkling Chalcedony
                "1x Chalcedony",-------Stormy Chalcedony
                "1x Dark Jade",--------Dazzling Dark Jade
                "1x Dark Jade",--------Enduring Dark Jade
                "1x Dark Jade",--------Energized Dark Jade
                "1x Dark Jade",--------Forceful Dark Jade
                "1x Dark Jade",--------Intricate Dark Jade
                "1x Dark Jade",--------Jagged Dark Jade
                "1x Dark Jade",--------Lambent Dark Jade
                "1x Dark Jade",--------Misty Dark Jade
                "1x Dark Jade",--------Opaque Dark Jade
                "1x Dark Jade",--------Radiant Dark Jade
                "1x Dark Jade",--------Seer's Dark Jade
                "1x Dark Jade",--------Shattered Dark Jade
                "1x Dark Jade",--------Shining Dark Jade
                "1x Dark Jade",--------Steady Dark Jade
                "1x Dark Jade",--------Sundered Dark Jade
                "1x Dark Jade",--------Tense Dark Jade
                "1x Dark Jade",--------Timeless Dark Jade
                "1x Dark Jade",--------Turbid Dark Jade
                "1x Dark Jade",--------Vivid Dark Jade
                "1x Huge Citrine",-----Accurate Huge Citrine
                "1x Huge Citrine",-----Champion's Huge Citrine
                "1x Huge Citrine",-----Deadly Huge Citrine
                "1x Huge Citrine",-----Deft Huge Citrine
                "1x Huge Citrine",-----Durable Huge Citrine
                "1x Huge Citrine",-----Empowered Huge Citrine
                "1x Huge Citrine",-----Etched Huge Citrine
                "1x Huge Citrine",-----Fierce Huge Citrine
                "1x Huge Citrine",-----Glimmering Huge Citrine
                "1x Huge Citrine",-----Glinting Huge Citrine
                "1x Huge Citrine",-----Inscribed Huge Citrine
                "1x Huge Citrine",-----Lucent Huge Citrine
                "1x Huge Citrine",-----Luminous Huge Citrine
                "1x Huge Citrine",-----Potent Huge Citrine
                "1x Huge Citrine",-----Pristine Huge Citrine
                "1x Huge Citrine",-----Reckless Huge Citrine
                "1x Huge Citrine",-----Resolute Huge Citrine
                "1x Huge Citrine",-----Resplendent Huge Citrine
                "1x Huge Citrine",-----Stalwart Huge Citrine
                "1x Huge Citrine",-----Stark Huge Citrine
                "1x Huge Citrine",-----Veiled Huge Citrine
                "1x Huge Citrine",-----Wicked Huge Citrine
                "1x Shadow Crystal",---Balanced Shadow Crystal
                "1x Shadow Crystal",---Defender's Shadow Crystal
                "1x Shadow Crystal",---Glowing Shadow Crystal
                "1x Shadow Crystal",---Guardian's Shadow Crystal
                "1x Shadow Crystal",---Infused Shadow Crystal
                "1x Shadow Crystal",---Mysterious Shadow Crystal
                "1x Shadow Crystal",---Puissant Shadow Crystal
                "1x Shadow Crystal",---Purified Shadow Crystal
                "1x Shadow Crystal",---Regal Shadow Crystal
                "1x Shadow Crystal",---Royal Shadow Crystal
                "1x Shadow Crystal",---Shifting Shadow Crystal
                "1x Shadow Crystal",---Sovereign Shadow Crystal
                "1x Shadow Crystal",---Tenuous Shadow Crystal
                "1x Sun Crystal",------Brilliant Sun Crystal
                "1x Sun Crystal",------Mystic Sun Crystal
                "1x Sun Crystal",------Quick Sun Crystal
                "1x Sun Crystal",------Rigid Sun Crystal
                "1x Sun Crystal",------Smooth Sun Crystal
                "1x Sun Crystal"-------Thick Sun Crystal
            };
        elseif rank > 394 and rank < 400 then -- 395-399
            shouldCraft = {
                "Bloodstone Band",
                "Crystal Chalcedony Amulet",
                "Crystal Citrine Necklace",
                "Sun Rock Ring"
            }; -- TODO add Sun Rock Ring
            shouldCraftRecipe = {
                "1x Bloodstone, 2x Crystallized Earth",-----Bloodstone Band
                "1x Chalcedony, 2x Crystallized Earth",-----Crystal Chalcedony Amulet
                "1x Huge Citrine, 2x Crystallized Earth",---Crystal Citrine Necklace
                "1x Sun Crystal, 2x Crystallized Earth"-----Sun Rock Ring
            };
        elseif rank > 399 and rank < 420 then -- 400-419
            shouldCraft = {
                "Stoneguard Band",
                "Shadowmight Ring"
            };
            shouldCraftRecipe = {
                "2x Eternal Earth",---------------------Stoneguard Band
                "1x Eternal Earth, 1x Eternal Shadow"---Shadowmight Ring
            };
        elseif rank > 419 and rank < 425 then -- 420-424
            shouldCraft = {"Dazzling Forest Emerald"};
            shouldCraftRecipe = {"1x Forest Emerald"};
        elseif rank > 424 and rank < 450 then -- 425-449
            shouldCraft = {
                "Chaotic Skyflare Diamond",
                "Destructive Skyflare Diamond",
                "Effulgent Skyflare Diamond",
                "Ember Skyflare Diamond",
                "Enigmatic Skyflare Diamond",-- before the addon support alternative recipes for same skill level, I chose this on as a reference to TERA's variations of enigmatic scrolls
                "Forlorn Skyflare Diamond",
                "Impassive Skyflare Diamond",
                "Revitalizing Skyflare Diamond",
                "Swift Skyflare Diamond",
                "Thundering Skyflare Diamond",
                "Tireless Skyflare Diamond",
                "Austere Earthsiege Diamond",
                "Beaming Earthsiege Diamond",
                "Bracing Earthsiege Diamond",
                "Eternal Earthsiege Diamond",
                "Insightful Earthsiege Diamond",
                "Invigorating Earthsiege Diamond",
                "Persistent Earthsiege Diamond",
                "Powerful Earthsiege Diamond",
                "Relentless Earthsiege Diamond",
                "Trenchant Earthsiege Diamond"
            };
            shouldCraftRecipe = {
                "1x Skyflare Diamond",-----Chaotic Skyflare Diamond
                "1x Skyflare Diamond",-----Destructive Skyflare Diamond
                "1x Skyflare Diamond",-----Effulgent Skyflare Diamond
                "1x Skyflare Diamond",-----Ember Skyflare Diamond
                "1x Skyflare Diamond",-----Enigmatic Skyflare Diamond
                "1x Skyflare Diamond",-----Forlorn Skyflare Diamond
                "1x Skyflare Diamond",-----Impassive Skyflare Diamond
                "1x Skyflare Diamond",-----Revitalizing Skyflare Diamond
                "1x Skyflare Diamond",-----Swift Skyflare Diamond
                "1x Skyflare Diamond",-----Thundering Skyflare Diamond
                "1x Skyflare Diamond",-----Tireless Skyflare Diamond
                "1x Earthsiege Diamond",---Austere Earthsiege Diamond
                "1x Earthsiege Diamond",---Beaming Earthsiege Diamond
                "1x Earthsiege Diamond",---Bracing Earthsiege Diamond
                "1x Earthsiege Diamond",---Eternal Earthsiege Diamond
                "1x Earthsiege Diamond",---Insightful Earthsiege Diamond
                "1x Earthsiege Diamond",---Invigorating Earthsiege Diamond
                "1x Earthsiege Diamond",---Persistent Earthsiege Diamond
                "1x Earthsiege Diamond",---Powerful Earthsiege Diamond
                "1x Earthsiege Diamond",---Relentless Earthsiege Diamond
                "1x Earthsiege Diamond"----Trenchant Earthsiege Diamond
            };
        elseif rank == 450 then
            shouldCraft = {"unknown"};
            shouldCraftRecipe = {"unknown"};
        end
    end -- Jewelcrafting end









--     ******    **                   **                         **   **   **      **
--    /*////**  /**                  /**                        //   /**  /**     //            *****
--    /*   /**  /**  ******    ***** /**  **  ****** **********  ** ******/**      ** *******  **///**
--    /******   /** //////**  **///**/** **  **//// //**//**//**/**///**/ /****** /**//**///**/**  /**
--    /*//// ** /**  ******* /**  // /****  //*****  /** /** /**/**  /**  /**///**/** /**  /**//******
--    /*    /** /** **////** /**   **/**/**  /////** /** /** /**/**  /**  /**  /**/** /**  /** /////**
--    /*******  ***//********//***** /**//** ******  *** /** /**/**  //** /**  /**/** ***  /**  *****
--    ///////  ///  ////////  /////  //  // //////  ///  //  // //    //  //   // // ///   //  /////


    -- Blacksmithing
    if tradeSkillName == "Blacksmithing" then
        if rank > 0 and rank < 26 then -- 1-25
            shouldCraft = {"Rough Sharpening Stone"};
            shouldCraftRecipe = {"1x Rough Stone"};
        elseif rank > 25 and rank < 46 then -- 26-45
            shouldCraft = {"Rough Grinding Stone"};
            shouldCraftRecipe = {"2x Rough Stone"};
        elseif rank > 45 and rank < 76 then -- 46-75
            shouldCraft = {"Copper Chain Belt"};
            shouldCraftRecipe = {"6x Copper Bar"};
        elseif rank == 450 then
            shouldCraft = {"unknown"};
        end
    end -- Blacksmithing end









--     **                           **   **                                                **     **
--    /**                          /**  /**                                               /**    //            *****
--    /**        *****   ******   ******/**       *****  ****** ***     **  ******  ******/**  ** ** *******  **///**
--    /**       **///** //////** ///**/ /******  **///**//**//*//**  * /** **////**//**//*/** ** /**//**///**/**  /**
--    /**      /*******  *******   /**  /**///**/******* /** /  /** ***/**/**   /** /** / /****  /** /**  /**//******
--    /**      /**////  **////**   /**  /**  /**/**////  /**    /****/****/**   /** /**   /**/** /** /**  /** /////**
--    /********//******//********  //** /**  /**//******/***    ***/ ///**//****** /***   /**//**/** ***  /**  *****
--    ////////  //////  ////////    //  //   //  ////// ///    ///    ///  //////  ///    //  // // ///   //  /////



    -- Leatherworking
    if tradeSkillName == "Leatherworking" then
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



        elseif rank == 450 then
            shouldCraft = {"unknown"};
        end
    end -- Leatherworking end








--     ********                  **                                 **
--    /**/////            ***** //                                 //            *****
--    /**       *******  **///** ** *******   *****   *****  ****** ** *******  **///**
--    /******* //**///**/**  /**/**//**///** **///** **///**//**//*/**//**///**/**  /**
--    /**////   /**  /**//******/** /**  /**/*******/******* /** / /** /**  /**//******
--    /**       /**  /** /////**/** /**  /**/**//// /**////  /**   /** /**  /** /////**
--    /******** ***  /**  ***** /** ***  /**//******//******/***   /** ***  /**  *****
--    //////// ///   //  /////  // ///   //  //////  ////// ///    // ///   //  /////



    -- Engineering









--     **                                 **           **   **
--    /**                                //  ******   /**  //
--    /** *******   ******  *****  ****** **/**///** ****** **  ******  *******
--    /**//**///** **////  **///**//**//*/**/**  /**///**/ /** **////**//**///**
--    /** /**  /**//***** /**  //  /** / /**/******   /**  /**/**   /** /**  /**
--    /** /**  /** /////**/**   ** /**   /**/**///    /**  /**/**   /** /**  /**
--    /** ***  /** ****** //***** /***   /**/**       //** /**//******  ***  /**
--    // ///   // //////   /////  ///    // //         //  //  //////  ///   //



    -- Inscription









--         **      **         **
--        ****    /**        /**                           **   **
--       **//**   /**  ***** /**       *****  **********  //** **
--      **  //**  /** **///**/******  **///**//**//**//**  //***
--     ********** /**/**  // /**///**/******* /** /** /**   /**
--    /**//////** /**/**   **/**  /**/**////  /** /** /**   **
--    /**     /** ***//***** /**  /**//****** *** /** /**  **
--    //      // ///  /////  //   //  ////// ///  //  //  //



    -- Alchemy
    if tradeSkillName == "Alchemy" then
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
    end -- Alchemy end









--     ******** **                  **         **     **      **
--    /**///// //                  /**        ****   //      /**
--    /**       ** ******  ****** ******     **//**   **     /**
--    /******* /**//**//* **//// ///**/     **  //** /**  ******
--    /**////  /** /** / //*****   /**     **********/** **///**
--    /**      /** /**    /////**  /**    /**//////**/**/**  /**
--    /**      /**/***    ******   //**   /**     /**/**//******
--    //       // ///    //////     //    //      // //  //////



    -- First Aid
    if tradeSkillName == "First Aid" then
        if rank > 0 and rank < 40 then --1 -39
            shouldCraft = {"Linen Bandage"};
            shouldCraftRecipe = {"1x Linen Cloth"};
        elseif rank > 39 and rank < 80 then -- 40-79
            shouldCraft = {"Heavy Linen Bandage"};
            shouldCraftRecipe = {"2x Linen Cloth"};
        elseif rank > 79 and rank < 115 then -- 80-114
            shouldCraft = {"Wool Bandage"};
            shouldCraftRecipe = {"1x Wool Cloth"};
        elseif rank > 114 and rank < 150 then -- 115-149
            shouldCraft = {"Heavy Wool Bandage"};
            shouldCraftRecipe = {"2x Wool Cloth"};
        elseif rank > 149 and rank < 180 then -- 151-179
            shouldCraft = {"Silk Bandage"};
            shouldCraftRecipe = {"1x Silk Cloth"};
        elseif rank > 179 and rank < 210 then -- 180-209
            shouldCraft = {"Heavy Silk Bandage"};
            shouldCraftRecipe = {"2x Silk cloth"};
        elseif rank > 209 and rank < 240 then -- 210-239
            shouldCraft = {"Mageweave Bandage"};
            shouldCraftRecipe = {"1x Mageweave Cloth"};
        elseif rank > 239 and rank < 260 then -- 240-259
            shouldCraft = {"Heavy Mageweave Bandage"};
            shouldCraftRecipe = {"2x Mageweave Cloth"};
        elseif rank > 259 and rank < 290 then -- 260-289
            shouldCraft = {"Runecloth Bandage"};
            shouldCraftRecipe = {"1x Runecloth"};
        elseif rank > 289 and rank < 300 then -- 290-299
            shouldCraft = {"Heavy Runecloth Bandage"};
            shouldCraftRecipe = {"2x Runecloth"};
        elseif rank > 299 and rank < 330 then -- 300-329
            shouldCraft = {"Netherweave Bandage"};
            shouldCraftRecipe = {"1x Netherweave Cloth"};
        elseif rank > 329 and rank < 350 then -- 330-349
            shouldCraft = {"Heavy Netherweave Bandage"};
            shouldCraftRecipe = {"2x Netherweave Cloth"};
        elseif rank > 349 and rank < 390 then -- 350-389
            shouldCraft = {"Frostweave Cloth"};
            shouldCraftRecipe = {"1x Frostweave Cloth"};
        elseif rank > 389 and rank < 450 then -- 390-449
            shouldCraft = {"Heavy Frostweave Bandage"};
            shouldCraftRecipe = {"2x Frostweave Cloth"};
        elseif rank == 450 then -- 450
            shouldCraft = {"unknown"};
            shouldCraftRecipe = {"unknown"};
        end
    end









--       ******                    **     **
--      **////**                  /**    //            *****
--     **    //   ******   ****** /**  ** ** *******  **///**
--    /**        **////** **////**/** ** /**//**///**/**  /**
--    /**       /**   /**/**   /**/****  /** /**  /**//******
--    //**    **/**   /**/**   /**/**/** /** /**  /** /////**
--     //****** //****** //****** /**//**/** ***  /**  *****
--      //////   //////   //////  //  // // ///   //  /////



    -- Cooking
    if tradeSkillName == "Cooking" then
        if rank > 0 and rank < 40 then -- 1-39
            shouldCraft = {"Spice Bread"};
            shouldCraftRecipe = {"1x Simple Flour, 1x Mild Spices"};
        elseif rank > 39 and rank < 80 then -- 40-79
            shouldCraft = {"Spiced Wolf Meat"};
            shouldCraftRecipe = {"1x Stringy Wolf Meat"};
        end
    end






    -- check skill action e.g. craft, mine, gather, skin
    if tradeSkillName == "Enchanting" or
    tradeSkillName == "Tailoring" or
    tradeSkillName == "Jewelcrafting" or
    tradeSkillName == "Blacksmithing" or
    tradeSkillName == "Leatherworking" then
      action = "craft";

    elseif tradeSkillName == "Mining" then
      action = "mine";

    elseif tradeSkillName == "Herbalism" then
      action = "gather";

    elseif tradeSkillName == "Skinning" then
      action = "skin";

    elseif tradeSkillName == "First Aid" then
      action = "Make";

    elseif tradeSkillName == "Cooking" then
        action = "cook";
    end


    -- Check if cap level was already reached
    if rank > 0 and rank < 450 then -- 1-449
        local shouldCraftIcon = 'Interface\\InventoryItems\\WoWUnknownItem01';--Spell_Holy_GreaterHeal
        print("You should " .. action .. " " .. shouldCraft[craftRecipeOptionsIndex]);
        print("shoudCraft is type: " .. type(shouldCraft[craftRecipeOptionsIndex]))
        -- function was here
        displayRecipe()
    else

        print("Profession Cap Reached");
        txtShouldCraft:SetText("Profession Cap already reached");
        imgSkillIcon:SetTexture(GetSpellTexture(tradeSkillName));
        txtShouldCraftRecipe:SetText('');
        MainFrameCoreCraft:Hide();
        MainFrameCore:SetHeight(150);
    end

end

------------------------------------------------------------------------------------------------------------







function TogglePcapperFrame(toggle)
  -- print("/pcapper " .. toggle);
  if toggle == "show" then
    MainFrameCore:Show();
  elseif toggle == "hide" then
    MainFrameCore:Hide();
  end
end



function fnOnLoad()
print("Profession Capper loaded for " .. UnitName("player") .. "(" .. UnitLevel("player") .. ")") -- print() = DEFAULT_CHAT_FRAME:AddMessage()
this:RegisterEvent("TRADE_SKILL_UPDATE");
this:RegisterEvent("TRADE_SKILL_CLOSE");

this:RegisterForDrag("LeftButton");
-- this:SetUserPlaced(1);

-- SlashCmdList["GET_CRAFTING_TODO"] = GetCraftingToDo;
SlashCmdList["TOGGLE_PCAPPER_FRAME"] = TogglePcapperFrame;
-- SLASH_GET_CRAFTING_TODO1 = "/pcapper";
SLASH_TOGGLE_PCAPPER_FRAME1 = "/pcapper";
--SLASH_GET_CRAFTING_TODO2 = "/wandergleydson";

end

function fnOnEvent()
    resetValues();
    -- DEFAULT_CHAT_FRAME:AddMessage("TS window opened"); -- for debugging
    -- print('event: ' .. event);



    isLinked, name = IsTradeSkillLinked(); -- check if you opened a link or if it's your own professions frame

    if isLinked then
        DEFAULT_CHAT_FRAME:AddMessage("You're viewing " .. name .. "'s linked profession");
    else
--        DEFAULT_CHAT_FRAME:AddMessage("It's your own profession frame");
        if event == "TRADE_SKILL_UPDATE" then
            tradeSkillName, rank, maxLevel = GetTradeSkillLine(); -- get profession name, current level and max level, respectively
            -- print(tradeSkillName .. '(' .. rank .. '-' .. maxLevel .. ')'); -- for debugging

            GetCraftingToDo();
            -- print('updated') -- debugging

            MainFrameCore:Show()

            -- tmpFSnameForpcapper:SetText("New Text"); -- funciona
        elseif event == "TRADE_SKILL_CLOSE" then
            MainFrameCore:Hide();
        end


    end


end

function displayRecipe()
    txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]);
    -- txtShouldCraftRecipe:SetText("Recipe: " .. shouldCraftRecipe);

    for i = 1, GetNumTradeSkills() do
        local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
        if skillName == shouldCraft[craftRecipeOptionsIndex] then

            -- Disable "craft" button if you can't craft the item
            if numAvailable > 0 then
                MainFrameCoreCraft:Enable();
            else
                MainFrameCoreCraft:Disable();
            end

            -- Disable "previous" button if the first one is currently being shown
            if craftRecipeOptionsIndex <= 1 then
                MainFrameCorePreviousRecipe:Disable();
            else
                MainFrameCorePreviousRecipe:Enable();
            end

            -- Disable "next" button if the last one is currently being shown
            if craftRecipeOptionsIndex >= table.getn(shouldCraft) then
                MainFrameCoreNextRecipe:Disable();
            else
                MainFrameCoreNextRecipe:Enable();
            end

            txtShouldCraftRecipe:SetText("Reagents: " .. shouldCraftRecipe[craftRecipeOptionsIndex]);
            MainFrameCoreCraft:Show();
            MainFrameCoreCraft:SetText('Craft (' .. numAvailable .. ')');
            MainFrameCore:SetHeight(250);


            -- Replacements for generic icons
            if GetTradeSkillIcon(i) == "Interface\\Icons\\Trade_Engraving" then
                shouldCraftIcon = "Interface\\Icons\\Spell_Holy_GreaterHeal";
            else
                shouldCraftIcon = GetTradeSkillIcon(i);
            end


            imgSkillIcon:SetTexture(shouldCraftIcon);
            print("index: " .. i); -- debugging
            print("texturePath: " .. GetTradeSkillIcon(i)); -- debugging
        end
    end
end

function displayNextRecipe()
    craftRecipeOptionsIndex = craftRecipeOptionsIndex + 1
    displayRecipe()
end

function displayPreviousRecipe()
    craftRecipeOptionsIndex = craftRecipeOptionsIndex - 1
    displayRecipe()
end

function craftRecipe()
    for i = 1, GetNumTradeSkills() do
        local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
        if skillName == shouldCraft[craftRecipeOptionsIndex] then
            print("crafting " .. numAvailable .."x " .. shouldCraft[craftRecipeOptionsIndex])
            DoTradeSkill(i, numAvailable);
        end
    end
end

function resetValues()
    shouldCraft = {"unknown"};
    txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]);
    imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    txtShouldCraftRecipe:SetText('');
    MainFrameCoreCraft:SetText('Craft');
end
