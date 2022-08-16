-- Variables
local addonName, addonTable = ...;

local tradeSkillName, rank, maxLevel; -- variables for currently opened profession frame
local isLinked, name; -- variables to know if you opened your own profession frame or if it's a link

local shouldCraft = {"unknown"}; -- varible that will show which recipe one should craft based on current skill level
local shouldCraftRecipe = {"unknown"}; -- variable that will hold the material needed to craft <shouldCraft>
local craftRecipeOptionsIndex = 1; -- variavle to define index of recipes

local frames = {};
local textures = {};

-- variables for check if the recipe you should craft has changed
-- local previousShouldCraft = {"unknown"}; -- what was the last value of shouldCraft?
local previousShouldCraft = {
  spellName = "unknown",
  spellId = "noSpellId",
  producedItemId = "noItemId",
  turnsGreyAtSkillLevel = 4,
  turnsYellowAtSkillLevel = 3,
  turnsGreenAtSkillLevel = 2,
  reagents = {
    {
      name = "unknown",
      amount = 0
    }
  }
}; -- what was the last value of shouldCraft?




-- for test in future
-- for i = 1, GetNumTradeSkills() do
--     local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
--     if skillName == 'Frostweave Bag' then
--         DoTradeSkill(i)
--     end
-- end





------------------------------------------------------------------------------------------------------------
-- function that determines which recipe you shout craft

function GetCraftingToDo()

    if tradeSkillName == "Enchanting" then
        shouldCraft = addonTable.getEnchantingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Tailoring" then
        shouldCraft = addonTable.getTailoringCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Jewelcrafting" then
        shouldCraft = addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Blacksmithing" then
        shouldCraft = addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Leatherworking" then
        shouldCraft = addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Engineering" then
        shouldCraft = addonTable.getEngineeringCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Inscription" then
        shouldCraft = addonTable.getInscriptionCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Alchemy" then
        shouldCraft = addonTable.getAlchemyCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "First Aid" then
        shouldCraft = addonTable.getFirstAidCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Cooking" then
        shouldCraft = addonTable.getCookingCurrentSkillLevelRecipeToCraft(rank);
    end


    -- Check if cap level was already reached
    if rank > 0 and rank < 450 then -- 1-449
        local shouldCraftIcon = 'Interface\\InventoryItems\\WoWUnknownItem01';--Spell_Holy_GreaterHeal
        displayRecipe()
    else

        -- if Profession Cap was already reached
        shouldCraft = {"unknown"};
        shouldCraftRecipe = {"unknown"};

        txtShouldCraft:SetText("Profession Cap already reached");
        imgSkillIcon:SetTexture(GetSpellTexture(tradeSkillName));
        txtShouldCraftRecipe:SetText('');
        MainFrameCoreCraft:Hide();
        MainFrameCoreNextRecipe:Hide();
        MainFrameCorePreviousRecipe:Hide();
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
print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] all modules loaded for|r |cff" .. addonTable.chat_frame_player_name_color .. "[" .. UnitLevel("player") .. "]" .. UnitName("player") .. "|r") -- print() = DEFAULT_CHAT_FRAME:AddMessage()
this:RegisterEvent("TRADE_SKILL_UPDATE");
this:RegisterEvent("TRADE_SKILL_CLOSE");

this:RegisterForDrag("LeftButton");

-- SlashCmdList["GET_CRAFTING_TODO"] = GetCraftingToDo;
SlashCmdList["TOGGLE_PCAPPER_FRAME"] = TogglePcapperFrame;
SLASH_TOGGLE_PCAPPER_FRAME1 = "/pcapper";

end

function fnOnEvent()
    resetValues();
    -- DEFAULT_CHAT_FRAME:AddMessage("TS window opened"); -- for debugging
    -- print('event: ' .. event);



    isLinked, name = IsTradeSkillLinked(); -- check if you opened a link or if it's your own professions frame

    if isLinked then
        -- DEFAULT_CHAT_FRAME:AddMessage("You're viewing " .. name .. "'s linked profession");
    else
--        DEFAULT_CHAT_FRAME:AddMessage("It's your own profession frame");
        if event == "TRADE_SKILL_UPDATE" then
            tradeSkillName, rank, maxLevel = GetTradeSkillLine(); -- get profession name, current level and max level, respectively
            -- print(tradeSkillName .. '(' .. rank .. '-' .. maxLevel .. ')'); -- for debugging

            GetCraftingToDo();

            MainFrameCore:Show()

            -- tmpFSnameForpcapper:SetText("New Text"); -- funciona
        elseif event == "TRADE_SKILL_CLOSE" then
            MainFrameCore:Hide();
        end


    end


end

function displayRecipe()
    -- local hasRecipeChanged = table.concat(shouldCraft) ~= table.concat(previousShouldCraft);
    local hasRecipeChanged = not tablesAreEquals(shouldCraft, previousShouldCraft);
    local skillName, skillType, numAvailable, isExpanded, serviceType
    local craftButtonText
    local enableBtnCraft = false; -- controls if "craft" button will be enabled
    local skillUpChance;
    local shouldCraftRecipe = '';

    -- print('shouldCraft: ' .. table.concat(shouldCraft));
    -- print('previousShouldCraft: ' .. table.concat(previousShouldCraft));
    --
    -- print('recipe changed:');
    -- print(hasRecipeChanged); --debugging
    --
    -- -- prevent skill level changes from having nil values due to index out of bound
    -- print('craftRecipeOptionsIndex(BEFORE): ' .. craftRecipeOptionsIndex); --debugging

    -- show buttons in case it was hidden due to 'skill level already 450'
    MainFrameCoreNextRecipe:Show();
    MainFrameCorePreviousRecipe:Show();

    if hasRecipeChanged then
        craftRecipeOptionsIndex = 1
    end
    -- print('craftRecipeOptionsIndex(AFTER): ' .. craftRecipeOptionsIndex); --debugging

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


    for i = 1, GetNumTradeSkills() do
        skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);

        if skillName == shouldCraft[craftRecipeOptionsIndex].spellName then
            craftButtonText = 'Craft (' .. numAvailable .. ')';
            enableBtnCraft = true;

            -- Replacements for generic icons
            if GetTradeSkillIcon(i) == "Interface\\Icons\\Trade_Engraving" then
                shouldCraftIcon = "Interface\\Icons\\Spell_Holy_GreaterHeal";
            else
                shouldCraftIcon = GetTradeSkillIcon(i);
            end
            -- Test
            -- GameTooltip:SetOwner(MainFrameCore)
            -- GameTooltip:SetHyperlink(GetTradeSkillItemLink(i))
            -- GameTooltip:SetHyperlink(GetSpellLink(3942))

            skillUpChance = ((shouldCraft[craftRecipeOptionsIndex].turnsGreyAtSkillLevel - rank) / (shouldCraft[craftRecipeOptionsIndex].turnsGreyAtSkillLevel - shouldCraft[craftRecipeOptionsIndex].turnsYellowAtSkillLevel) * 100);
            if skillUpChance > 100 then skillUpChance = 100 end

            txtSkillUpChance:SetText('Skill Up: ' .. string.format('%.0f', skillUpChance) .. '%'); -- text that displays next recipe(s) you should craft

            if rank < shouldCraft[craftRecipeOptionsIndex].turnsYellowAtSkillLevel then
              txtShouldCraft:SetTextColor(1, 0.5, 0.25, 1); -- Orange
              txtSkillUpChance:SetTextColor(1, 0.5, 0.25, 1); -- Orange
          elseif rank < shouldCraft[craftRecipeOptionsIndex].turnsGreenAtSkillLevel then
              txtShouldCraft:SetTextColor(1, 1, 0, 1); -- Yellow
              txtSkillUpChance:SetTextColor(1, 1, 0, 1); -- Yellow
          elseif rank < shouldCraft[craftRecipeOptionsIndex].turnsGreyAtSkillLevel then
              txtShouldCraft:SetTextColor(0.25, 0.75, 0.25, 1); -- Green
              txtSkillUpChance:SetTextColor(0.25, 0.75, 0.25, 1); -- Green
            else
              txtShouldCraft:SetTextColor(0.5, 0.5, 0.5, 1); -- Grey
            end

            break; -- exit 'for' loop if current skill index(on profession frame) matches the skill stored on 'shouldCraft' variable
        else
            shouldCraftIcon = "Interface\\InventoryItems\\WoWUnknownItem01"; -- red interrogation icon
            craftButtonText = "Unavailable"; -- means that you have not learnt this recipe yet
            enableBtnCraft = false;
            txtSkillUpChance:SetText('');
            txtShouldCraft:SetTextColor(1, 0.1, 0.1, 1);
            for i = 1, #frames do
                frames[i]:Hide();
                textures[i] = nil;
            end
        end --if
    end --for


    -- Disable "craft" button if you can't craft the item
    if (enableBtnCraft) and (numAvailable > 0) then
        MainFrameCoreCraft:Enable();
    else
        MainFrameCoreCraft:Disable();
    end




    -- Setup and display the frame and its elements
    txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex].spellName); -- text that displays next recipe(s) you should craft
    -- txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]); -- text that displays next recipe(s) you should craft

    -- set and show reagents icons and texts
    for i = 1, #shouldCraft[craftRecipeOptionsIndex].reagents do
        shouldCraftRecipe = shouldCraftRecipe .. shouldCraft[craftRecipeOptionsIndex].reagents[i].amount .. 'x ' .. shouldCraft[craftRecipeOptionsIndex].reagents[i].name .. '\n\n';

        frames[i] = CreateFrame("Frame", "frameIndex" .. i, MainFrameCore);
        frames[i]:SetWidth(16);
        frames[i]:SetHeight(16);
        frames[i]:ClearAllPoints();
        frames[i]:SetPoint('TOP',MainFrameCoreTitle,'TOP', -82, (-175 - i*(16+7.6)));
        frames[i]:Show();
        frames[i]:EnableMouse();
        frames[i]:SetScript("onEnter", function()
            -- print('reagentessIndex')
            local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(shouldCraft[craftRecipeOptionsIndex].reagents[i].id);
            GameTooltip:SetOwner(frames[i]);
            GameTooltip:SetHyperlink(link);
        end)
        frames[i]:SetScript("onLeave", fnHideTooltip)

        textures[i] = frames[i]:CreateTexture(nil, "ARTWORK")
        textures[i]:SetAllPoints()
        textures[i]:SetTexture(GetItemIcon(shouldCraft[craftRecipeOptionsIndex].reagents[i].id));
    end -- for

    txtShouldCraftRecipe:SetText(shouldCraftRecipe); -- text that displays reagents for next recipe(s) you should craft
    -- txtShouldCraftRecipe:SetText("Recipe: " .. shouldCraftRecipe[craftRecipeOptionsIndex]); -- text that displays reagents for next recipe(s) you should craft



    -- CreateFrame("Frame", "myFrame" .. 1, MainFrameCore);
    -- myFrame:SetWidth(20);
    -- myFrame:SetHeight(20);
    -- myFrame:ClearAllPoints();
    -- myFrame:SetPoint('TOP',MainFrameCoreTitle,'TOP', -75, -190)
    -- -- myFrame:Show();
    -- myFrame:EnableMouse();
    -- myFrame:SetScript("onEnter", function()
    --     print('reagentess')
    --     local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(4305);
    --     GameTooltip:SetOwner(myFrame);
    --     GameTooltip:SetHyperlink(link);
    -- end)
    -- myFrame:SetScript("onLeave", fnHideTooltip)
    --
    -- local tex = myFrame:CreateTexture(nil, "ARTWORK")
    -- tex:SetAllPoints()
    -- -- tex:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    -- tex:SetTexture("Interface\\Icons\\inv_fabric_silk_03");


    imgSkillIcon:SetTexture(shouldCraftIcon); ---- skill texture icon above button
    MainFrameCoreCraft:SetText(craftButtonText) -- 'craft' button
    MainFrameCore:SetHeight(205); ---------------- set frame height
    MainFrameCore:SetHeight(MainFrameCore:GetHeight() + (#shouldCraft[craftRecipeOptionsIndex].reagents * 23.6) + 10); ---------------- set frame height
    MainFrameCoreCraft:Show(); ------------------- show the frame itself(turn it visible)

    previousShouldCraft = shouldCraft;
end --displayRecipe()




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
        if skillName == shouldCraft[craftRecipeOptionsIndex].spellName then
            print("|cff" .. addonTable.chat_frame_default_color .."[Profession Capper] crafting|r |cff" .. addonTable.chat_frame_player_name_color .. numAvailable .."x |r|cff" .. addonTable.chat_frame_default_color .. shouldCraft[craftRecipeOptionsIndex].spellName .. "|r")
            DoTradeSkill(i, numAvailable);
        end
    end
end




function resetValues()
    shouldCraft = {"unknown"};
    shouldCraftRecipe = {"unknown"};
    -- txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]);
    txtShouldCraft:SetText();
    imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    txtShouldCraftRecipe:SetText('');
    MainFrameCoreCraft:SetText('Craft');
    for i = 1, #frames do
        frames[i]:Hide();
        textures[i] = nil;
    end
end



function tablesAreEquals(t1, t2)
    if type(t1) ~= type(t2) or type(t1) ~= "table" or type(t2) ~= "table" or #t1 ~= #t2 then return false end
    for k1, v1 in pairs(t1) do
        if v1.spellName == nil or t2[k1] == nil then return false end
        if v1.spellName ~= t2[k1].spellName then return false end
    end
    for k2, v2 in pairs(t2) do
        if v2.spellName == nil or t1[k2] == nil then return false end
        if v2.spellName ~= t1[k2].spellName then return false end
    end
    return true
end



function fnShowTooltip()
    local link, tradeLink, name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice;
    if shouldCraft[craftRecipeOptionsIndex].producedItemId == 'isSpell' then
        link, tradeLink = GetSpellLink(shouldCraft[craftRecipeOptionsIndex].spellId);
    else
        name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(shouldCraft[craftRecipeOptionsIndex].producedItemId);
    end

    -- GameTooltip:SetOwner(MainFrameCore);
    GameTooltip:SetOwner(frameImgSkillIconMouseHandler);
    GameTooltip:SetHyperlink(link);
    -- GameTooltip:SetHyperlink(GetSpellLink(shouldCraft[craftRecipeOptionsIndex].spellId));
end

function fnHideTooltip()
    GameTooltip:Hide();
end
