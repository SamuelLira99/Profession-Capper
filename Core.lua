-- Variables

local tradeSkillName, rank, maxLevel; -- variables for currently opened profession frame
local isLinked, name; -- variables to know if you opened your own profession frame or if it's a link

local shouldCraft = 'unknown'; -- varible that will show which recipe one should craft based on current skill level
local shouldCraftRecipe = 'unknown'; -- variable that will hold the material needed to craft <shouldCraft>
local skillAction = ''; -- variable to define String as "You should <craft/mine/gather/skin> <recipe>"



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



    -- Enchanting
    if tradeSkillName == "Enchanting" then
        if rank > 0 and rank < 2 then -- 1
            shouldCraft = "Runed Copper Rod";
            shouldCraftRecipe = "1x Copper Rod, 1x Strange Dust, 1x Magic Essence";
        elseif rank > 1 and rank < 50 then -- 2-49
            shouldCraft = "Enchant Bracer - Minor Health";
            shouldCraftRecipe = "1x Strange Dust";
        elseif rank > 49 and rank < 90 then -- 50-89
            shouldCraft = "Enchant Bracer - Minor Health";
            shouldCraftRecipe = "1x Strange Dust";
        elseif rank > 89 and rank < 100 then -- 90-99
            shouldCraft = "Enchant Bracer - Minor Stamina";
            shouldCraftRecipe = "3x Strange Dust";
        elseif rank > 99 and rank < 101 then -- 100
            shouldCraft = "Runed Silver Rod";
            shouldCraftRecipe = "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed copper Rod";
        elseif rank > 100 and rank < 110 then --101-109
            shouldCraft = "Greater Magic Wand";
            shouldCraftRecipe = "1x Simple Wood, 1x Greater Magic Essence";
        elseif rank > 109 and rank < 135 then -- 110-134
            shouldCraft = "Enchant Cloak - Minor Agility"; -- bougth from vendor
            shouldCraftRecipe = "1x Lesser Astral Essence";
        elseif rank > 134 and rank < 155 then -- 135-154
            shouldCraft = "Enchant Bracer - Lesser Stamina";
            shouldCraftRecipe = "2x Soul Dust";
        elseif rank > 154 and rank < 156 then -- 155
            shouldCraft = "Runed Golden Rod";
            shouldCraftRecipe = "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod";
        elseif rank > 155 and rank < 185 then -- 156-184
            shouldCraft = "Enchant Bracer - Lesser Strength"; -- bought from vendor
            shouldCraftRecipe = "2x Soul Dust";
        elseif rank > 184 and rank < 219 then -- 185-218
            shouldCraft = "Enchant Bracer - Strength";
            shouldCraftRecipe = "1x Vision Dust";
        elseif rank > 218 and rank < 220 then -- 219
            shouldCraft = "Runed Truesilver Rod";
            shouldCraftRecipe = "1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod";
        elseif rank > 219 and rank < 225 then -- 220-224
            shouldCraft = "Enchant Cloak - Greater Defense";
            shouldCraftRecipe = "3x Vision Dust";
        elseif rank > 224 and rank < 230 then -- 225-229
            shouldCraft = "Enchant Gloves - Agility";
            shouldCraftRecipe = "1x Lesser Nether Essence, 1x Vision Dust";
        elseif rank > 229 and rank < 235 then -- 230-234
            shouldCraft = "Enchant Boots - Stamina";
            shouldCraftRecipe = "5x Vision Dust";
        elseif rank > 234 and rank < 240 then -- 235-239
            shouldCraft = "Enchant Chest - Superior Health";
            shouldCraftRecipe = "6x Vision Dust";
        elseif rank > 239 and rank < 250 then -- 240-249
            shouldCraft = "Enchant Boots - Lesser Accuracy";
            shouldCraftRecipe = "4x Vision Dust, 1x Lesser Nether Essence";
        elseif rank > 249 and rank < 260 then -- 250-259
            shouldCraft = "Lesser Mana Oil";
            shouldCraftRecipe = "3x Dream Dust, 2x Purple Lotus, 1x Crystal Vial";
        elseif rank > 259 and rank < 265 then -- 260-264
            shouldCraft = "Enchant Bracer - Greater Intellect";
            shouldCraftRecipe = "5x Lesser Eternal Essence";
        elseif rank > 264 and rank < 299 then -- 265-298
            shouldCraft = "Enchant Shield - Greater Stamina"; -- bought from vendor
            shouldCraftRecipe = "5x Dream Dust";
        elseif rank > 298 and rank < 300 then -- 299
            shouldCraft = "Runed Arcanite Rod";
            shouldCraftRecipe = "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard";
        elseif rank > 299 and rank < 301 then -- 300
            shouldCraft = "Runed Fel Iron Rod";
            shouldCraftRecipe = "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod";
        elseif rank > 300 and rank < 310 then -- 301-309
            shouldCraft = "Enchant Bracer - Assault";
            shouldCraftRecipe = "6x Arcane Dust";
        elseif rank > 309 and rank < 320 then -- 310-319
            shouldCraft = "Enchant Bracer - Brawn";
            shouldCraftRecipe = "6x Arcane Dust";
        elseif rank > 319 and rank < 330 then --320-329
            shouldCraft = "Enchant Gloves - Assault";
            shouldCraftRecipe = "8x Arcane Dust";
        elseif rank > 329 and rank < 335 then -- 330-334
            shouldCraft = "Enchant Shield - Major Stamina";
            shouldCraftRecipe = "15x Arcane Dust";
        elseif rank > 334 and rank < 340 then -- 335-339
            shouldCraft = "Enchant Shield - Resilience";
            shouldCraftRecipe = "1x Large Prismatic Shard, 4x Lesser Planar Essence";
        elseif rank > 339 and rank < 350 then -- 340-349
            shouldCraft = "Superior Wizard Oil";
            shouldCraftRecipe = "3x Arcane Dust, 1x Nightmare Vine, 1x Crystal Vial";
        elseif rank > 349 and rank < 351 then -- 350
            shouldCraft = "Runed Adamantite Rod";
            shouldCraftRecipe = "1x Adamantite Rod. 8x Greater Planar Essence, 8x Large Prismatic Shard, 1x Primal Might, 1x Runed Fel Iron Rod";
        elseif rank > 350 and rank < 360 then -- 351-359
            shouldCraft = "Enchant Cloak - Speed";
            shouldCraftRecipe = "6x Infinite Dust";
        elseif rank > 359 and rank < 375 then -- 360-374
            shouldCraft = "Enchant Bracers - Striking";
            shouldCraftRecipe = "6x Infinite Dust";
        elseif rank > 374 and rank < 376 then -- 375
            shouldCraft = "Runed Eternium Rod";
            shouldCraftRecipe = "1x Eternium Rod, 6x Greater Planar Essence, 6x Arcane Dust, 1x Runed Adamantite Rod";
        elseif rank > 375 and rank < 380 then -- 376-379
            shouldCraft = "Enchant Bracers - Striking";
            shouldCraftRecipe = "6x Infinite Dust";
        elseif rank > 379 and rank < 385 then -- 380-384
            shouldCraft = "Enchant Bracers - Exceptional Intellect";
            shouldCraftRecipe = "5x Infinite Dust";
        elseif rank > 384 and rank < 395 then -- 385-394
            shouldCraft = "Enchant Boots - Icewalker";
            shouldCraftRecipe = "8x Infinite Dust, 1x Crystallized Water";
        elseif rank > 394 and rank < 410 then -- 395-409
            shouldCraft = "Enchant Cloak – Superior Agility";
            shouldCraftRecipe = "0x Infinite Dust.";
        elseif rank > 409 and rank < 415 then -- 410-414
            shouldCraft = "Enchant Gloves - Expertise";
            shouldCraftRecipe = "12x Infinite Dust";
        elseif rank > 414 and rank < 420 then -- 415-419
            shouldCraft = "Enchant Boots - Greater Spirit";
            shouldCraftRecipe = "10x Infinite Dust, 1x Greater Cosmic Essence.";
        elseif rank > 419 and rank < 425 then -- 420-424
            shouldCraft = "Enchant Chest - Greater Mana Restoration";
            shouldCraftRecipe = "4x Infinite Dust, 4x Greater Cosmic Essence";
        elseif rank > 424 and rank < 426 then -- 425
            shouldCraft = "Runed Titanium Rod";
            shouldCraftRecipe = "1x Titanium Rod, 12x Infinite Dust, 4x Greater Cosmic Essence,2x Dream Shard, 1x Runed Eternium Rod";
        elseif rank > 425 and rank < 440 then -- 426-439
            shouldCraft = "Enchant Chest - Super Health";
            shouldCraftRecipe = "20x Infinite Dust, 4x Greater Cosmic Essence";
        elseif rank > 439 and rank < 450 then -- 440-449
            shouldCraft = "Enchant Boots - Greater Assault";
            shouldCraftRecipe = "4x Greater Cosmic Essence, 4x Dream Shard";
        elseif shouldCraft == 450 then -- 450
            shouldCraft = "unknown";
            shouldCraftRecipe = "unknown";
        end
    end -- Enchanting end



    -- Tailoring
    if tradeSkillName == "Tailoring" then
        if rank > 0 and rank < 46 then -- 1-45
            shouldCraft = "Bolt of Linen Cloth";
            shouldCraftRecipe = "2x Linen Cloth";
        elseif rank > 44 and rank < 70 then -- 45-69
            shouldCraft = "Heavy Linen Gloves";
            shouldCraftRecipe = "2x Bolt of Linen Cloth, 1x Coarse Thread";
        elseif rank > 69 and rank < 75 then -- 70-74
            shouldCraft = "Reinforced Linen Cape";
            shouldCraftRecipe = "2x Bolt of Linen Cloth, 3x Coarse Thread";
        elseif rank > 74 and rank < 100 then -- 75-99
            shouldCraft = "Bolt of Woolen Cloth"
            shouldCraftRecipe = "3x Wool Cloth";

        elseif rank > 424 and rank < 450 then -- 425-449
            shouldCraft = "[Enchant Gloves : Expertise] - 12x Infinite Dust";
            shouldCraftRecipe = "";
        elseif rank == 450 then
            shouldCraft = "nothing";
        end
    end -- Tailoring end



    -- Jewelcrafting



    -- Blacksmithing
    if tradeSkillName == "Blacksmithing" then
        if rank > 0 and rank < 26 then -- 1-25
            shouldCraft = "Rough Sharpening Stone";
            shouldCraftRecipe = "1x Rough Stone";
        elseif rank > 25 and rank < 46 then -- 26-45
            shouldCraft = "Rough Grinding Stone";
            shouldCraftRecipe = "2x Rough Stone";
        elseif rank > 45 and rank < 76 then -- 46-75
            shouldCraft = "Copper Chain Belt";
            shouldCraftRecipe = "6x Copper Bar";
        elseif rank == 450 then
            shouldCraft = "unknown";
        end
    end -- Blacksmithing end



    -- Leatherworking



    -- Engineering



    -- Inscription



    -- Alchemy
    if tradeSkillName == "Alchemy" then
        if rank > 0 and rank < 60 then -- 1-59
            shouldCraft = "[Minor Healing Potions] - 1x Peacebloom, 1x Sliverleaf, 1x Empty Vial";
        elseif rank > 59 and rank < 106 then -- 60-105
            shouldCraft = "[Lesser Healing Potion] - 1x Minor Healing Potion, 1x Briarthorn";
        elseif rank > 105 and rank < 111 then -- 106-110
            shouldCraft = "[Elixir of Wisdom] - 1x Mageroyal, 1x Briarthorn, 1x Empty Vial";
        elseif rank > 110 and rank < 141 then -- 111-140
            shouldCraft = "[Healing Potion] - 1x Bruiseweed, 1x Briarthorn, 1x Leaded Vial";
        elseif rank > 140 and rank < 156 then -- 141-155
            shouldCraft = "[Lesser Mana Potion] - 1x Mageroyal, 1x Stranglekelp, 1x Empty Vial";
        end
    end -- Alchemy end



    -- First Aid



    -- Coocking






    -- check skill action e.g. craft, mine, gather, skin
    if tradeSkillName == "Enchanting" or
    tradeSkillName == "Tailoring" or
    tradeSkillName == "Jewelcrafting" or
    tradeSkillName == "Blacksmithing" then
      action = "craft";

    elseif tradeSkillName == "Mining" then
      action = "mine";

    elseif tradeSkillName == "Herbalism" then
      action = "gather";

    elseif tradeSkillName == "Skinning" then
      action = "skin";
    end


    -- Check if cap level was already reached
    if rank > 0 and rank < 450 then -- 1-449
        local shouldCraftIcon = 'Interface\\InventoryItems\\WoWUnknownItem01';--Spell_Holy_GreaterHeal
        print("You should " .. action .. " " .. shouldCraft);
        txtShouldCraft:SetText(shouldCraft);
        -- txtShouldCraftRecipe:SetText("Recipe: " .. shouldCraftRecipe);

        for i = 1, GetNumTradeSkills() do
            local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
            if skillName == shouldCraft then
                txtShouldCraftRecipe:SetText("Reagents: " .. shouldCraftRecipe);
                MainFrameCoreCraft:Show();
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

function craftRecipe()
    for i = 1, GetNumTradeSkills() do
        local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
        if skillName == shouldCraft then
            print("crafting " .. shouldCraft)
            DoTradeSkill(i);
        end
    end
end

function resetValues()
    shouldCraft = "unknown";
    txtShouldCraft:SetText(shouldCraft);
    imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    txtShouldCraftRecipe:SetText('');
end
