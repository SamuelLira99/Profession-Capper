-- Variables
local addonName, addonTable = ...;

local tradeSkillName, rank, maxLevel; -- variables for currently opened profession frame
local isLinked, name; -- variables to know if you opened your own profession frame or if it's a link

local shouldCraft = {"unknown"}; -- varible that will show which recipe one should craft based on current skill level
local shouldCraftRecipe = {"unknown"}; -- variable that will hold the material needed to craft <shouldCraft>
local craftRecipeOptionsIndex = 1; -- variavle to define index of recipes




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
        shouldCraft, shouldCraftRecipe = addonTable.getEnchantingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Tailoring" then
        shouldCraft, shouldCraftRecipe = addonTable.getTailoringCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Jewelcrafting" then
        shouldCraft, shouldCraftRecipe = addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Blacksmithing" then
        shouldCraft, shouldCraftRecipe = addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Leatherworking" then
        shouldCraft, shouldCraftRecipe = addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Alchemy" then
        shouldCraft, shouldCraftRecipe = addonTable.getAlchemyCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "First Aid" then
        shouldCraft, shouldCraftRecipe = addonTable.getFirstAidCurrentSkillLevelRecipeToCraft(rank);

    elseif tradeSkillName == "Cooking" then
        shouldCraft, shouldCraftRecipe = addonTable.getCookingCurrentSkillLevelRecipeToCraft(rank);
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
print("[Profession Capper] all modules loaded for [" .. UnitLevel("player") .. "]" .. UnitName("player") .. "") -- print() = DEFAULT_CHAT_FRAME:AddMessage()
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
    shouldCraftRecipe = {"unknown"};
    txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]);
    imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    txtShouldCraftRecipe:SetText('');
    MainFrameCoreCraft:SetText('Craft');
end
