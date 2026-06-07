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
  spellId = "noSpellId",
  -- turnsGreyAtSkillLevel = 4,
  -- turnsYellowAtSkillLevel = 3,
  -- turnsGreenAtSkillLevel = 2,
}; -- what was the last value of shouldCraft?




-- for test in future
-- for i = 1, GetNumTradeSkills() do
--     local skillName, skillType, numAvailable, isExpanded, serviceType = GetTradeSkillInfo(i);
--     if skillName == 'Frostweave Bag' then
--         DoTradeSkill(i)
--     end
-- end





------------------------------------------------------------------------------------------------------------
-- function that determines which recipe you shoud craft

function GetCraftingToDo()

    local recipes =
    addonTable.getRecipesForSkill(
        tradeSkillName,
        rank
    )

shouldCraft = {}

for i = 1, #recipes do
--     print('current spellId: ' .. recipes[i].spellId);
    local recipe =
    addonTable.getTradeSkillDataBySpellId(
        recipes[i].spellId
    )

    recipe.producedAmount =
        recipes[i].producedAmount

    table.insert(shouldCraft, recipe)
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

            --  TODO GetSkillLineInfo()


            -- test
            -- name, rank, icon, powerCost, isFunnel, powerType, castingTime, minRange, maxRange = GetSpellInfo(18239)
            -- print('{name: ' .. name .. ', rank: ' .. rank .. '}');
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

    local currentRecipe = shouldCraft[craftRecipeOptionsIndex];

    for i, frame in ipairs(frames) do

        frame:Hide()

        frame.reagentId = nil

        if textures[i] then
            textures[i]:SetTexture(nil)
        end
    end

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

    -- local recipeData = addonTable.getTradeSkillDataBySpellId(
    --     shouldCraft[craftRecipeOptionsIndex].spellId
    -- );

    for i = 1, #currentRecipe.reagents do
--         print('[' .. currentRecipe.reagents[i].id .. '] ' .. currentRecipe.reagents[i].amount .. 'x' .. currentRecipe.reagents[i].name);
    end


    local currentRecipe = shouldCraft[craftRecipeOptionsIndex]

local skillName,
      skillType,
      numAvailable,
      isExpanded,
      serviceType =
    GetTradeSkillInfo(currentRecipe.tradeSkillIndex)

-- print('skillType: ' .. tostring(skillType))

craftButtonText = 'Craft (' .. tostring(numAvailable) .. ')'
enableBtnCraft = true

-- Replacements for generic icons
if currentRecipe.icon == "Interface\\Icons\\Trade_Engraving" then
    shouldCraftIcon = "Interface\\Icons\\Spell_Holy_GreaterHeal"
else
    shouldCraftIcon = currentRecipe.icon
end

local producedAmount = currentRecipe.producedAmount;

if type(producedAmount) == "table" then

    txtProducedAmount:SetText(
        producedAmount[1] ..
        "-" ..
        producedAmount[2]
    )

elseif producedAmount then

    txtProducedAmount:SetText(
        tostring(producedAmount)
    )

else

    txtProducedAmount:SetText('')
end

if skillType == 'optimal' then
    txtShouldCraft:SetTextColor(1, 0.5, 0.25, 1)
    txtSkillUpChance:SetTextColor(1, 0.5, 0.25, 1)
    skillUpChance = 100

elseif skillType == 'medium' then
    txtShouldCraft:SetTextColor(1, 1, 0, 1)
    txtSkillUpChance:SetTextColor(1, 1, 0, 1)
    skillUpChance = 75

elseif skillType == 'easy' then
    txtShouldCraft:SetTextColor(0.25, 0.75, 0.25, 1)
    txtSkillUpChance:SetTextColor(0.25, 0.75, 0.25, 1)
    skillUpChance = 25

else
    txtShouldCraft:SetTextColor(0.5, 0.5, 0.5, 1)
    txtSkillUpChance:SetTextColor(0.5, 0.5, 0.5, 1)
    skillUpChance = 0
end

if skillUpChance > 100 then
    skillUpChance = 100
end

txtSkillUpChance:SetText(
    'Skill Up: ' ..
    string.format('%.0f', skillUpChance) ..
    '%'
)


    -- Disable "craft" button if you can't craft the item
    if (enableBtnCraft) and (numAvailable > 0) then
        MainFrameCoreCraft:Enable();
    else
        MainFrameCoreCraft:Disable();
    end




    -- Setup and display the frame and its elements
    txtShouldCraft:SetText(currentRecipe.spellName); -- text that displays next recipe(s) you should craft
    -- txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]); -- text that displays next recipe(s) you should craft

    -- set and show reagents icons and texts
    -- for i = 1, #shouldCraft[craftRecipeOptionsIndex].reagents do
    for i = 1, #currentRecipe.reagents do

    local reagent =
        currentRecipe.reagents[i]

    local reagentId =
        reagent.id

    shouldCraftRecipe =
        shouldCraftRecipe ..
        reagent.amount ..
        'x ' ..
        reagent.name ..
        '\n\n'

    if not frames[i] then
        frames[i] =
            CreateFrame(
                "Frame",
                "frameIndex" .. i,
                MainFrameCore
            )

        frames[i]:SetWidth(16)
        frames[i]:SetHeight(16)
        frames[i]:EnableMouse()
    end

    frames[i]:ClearAllPoints()

    frames[i]:SetPoint(
        'TOP',
        MainFrameCoreTitle,
        'TOP',
        -82,
        (-175 - i*(16+7.6))
    )

    frames[i]:Show()

    frames[i].reagentId = reagentId

    frames[i]:SetScript(
        "OnEnter",
        function(self)

            local _, link =
                GetItemInfo(self.reagentId)

            if link then
                GameTooltip:SetOwner(self)
                GameTooltip:SetHyperlink(link)
            end
        end
    )

    frames[i]:SetScript(
        "OnLeave",
        fnHideTooltip
    )

    if not textures[i] then
        textures[i] =
            frames[i]:CreateTexture(
                nil,
                "ARTWORK"
            )

        textures[i]:SetAllPoints()
    end

    textures[i]:SetTexture(
        GetItemIcon(reagentId)
    )
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
    MainFrameCore:SetHeight(MainFrameCore:GetHeight() + (#currentRecipe.reagents * 23.6) + 10); ---------------- set frame height
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

    local currentRecipe =
        shouldCraft[craftRecipeOptionsIndex]

    local skillName,
          skillType,
          numAvailable =
        GetTradeSkillInfo(
            currentRecipe.tradeSkillIndex
        )

    print(
        "|cff" ..
        addonTable.chat_frame_default_color ..
        "[Profession Capper] crafting|r |cff" ..
        addonTable.chat_frame_player_name_color ..
        numAvailable ..
        "x |r|cff" ..
        addonTable.chat_frame_default_color ..
        currentRecipe.spellName ..
        "|r"
    )

    DoTradeSkill(
        currentRecipe.tradeSkillIndex,
        numAvailable
    )
end




function resetValues()
    shouldCraft = {"unknown"};
    shouldCraftRecipe = {"unknown"};
    -- txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]);
    txtShouldCraft:SetText();
    imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    txtShouldCraftRecipe:SetText('');
    MainFrameCoreCraft:SetText('Craft');
    txtProducedAmount:SetText('');
    for i = 1, #frames do
        frames[i]:Hide()

        if textures[i] then
            textures[i]:SetTexture(nil)
        end
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

    local currentRecipe =
        shouldCraft[craftRecipeOptionsIndex]

    if not currentRecipe then
        return
    end

    GameTooltip:SetOwner(
        frameImgSkillIconMouseHandler
    )

    if currentRecipe.producedItemId
    and currentRecipe.producedItemId ~= 'isSpell' then

        local _, link =
            GetItemInfo(
                currentRecipe.producedItemId
            )

        if link then
            GameTooltip:SetHyperlink(link)
        end

    else

        local link =
            GetSpellLink(
                currentRecipe.spellId
            )

        if link then
            GameTooltip:SetHyperlink(link)
        end
    end
end

function fnHideTooltip()
    GameTooltip:Hide();
end

-- refactoring
addonTable.getRecipesForSkill = function(professionName, rank)

    --local professionData = addonTable.professions[
    --        string.lower(professionName)
    --    ]

    local professionData =
    addonTable.professions[
    addonTable.normalizeProfessionName(
            professionName
    )
    ]

    if not professionData then
        return nil
    end

    for i = 1, #professionData do

        local range = professionData[i]

        if rank >= range.min
        and rank <= range.max then

            return range.recipes
        end
    end

    return nil
end



addonTable.getTradeSkillDataBySpellId =
    function(spellId)

    for i = 1, GetNumTradeSkills() do

        local skillName, skillType =
            GetTradeSkillInfo(i)

        local link =
            GetTradeSkillRecipeLink(i)

        if link then

            local currentSpellId =
                string.match(link, ":(%d+)")

            currentSpellId =
                tonumber(currentSpellId)

            if currentSpellId == spellId then

                local recipeData = {}

                recipeData.tradeSkillIndex = i

                recipeData.spellId = spellId

                recipeData.spellName = skillName

                recipeData.icon = GetTradeSkillIcon(i)

                local itemLink = GetTradeSkillItemLink(i)

                if itemLink then
                    recipeData.producedItemId =
                        tonumber(
                            string.match(
                                itemLink,
                                "item:(%d+)"
                            )
                        )
                else
                    recipeData.producedItemId = 'isSpell'
                end

                recipeData.reagents = {}

                local numReagents =
                    GetTradeSkillNumReagents(i)

                for reagentIndex = 1, numReagents do

                    local reagentName,
                          reagentTexture,
                          reagentAmount,
                          playerHas =
                        GetTradeSkillReagentInfo(
                            i,
                            reagentIndex
                        )

                    local reagentLink =
                        GetTradeSkillReagentItemLink(
                            i,
                            reagentIndex
                        )

                    local reagentId =
                        tonumber(
                            string.match(
                                reagentLink or "",
                                "item:(%d+)"
                            )
                        )

                    table.insert(
                        recipeData.reagents,
                        {
                            id = reagentId,
                            name = reagentName,
                            amount = reagentAmount
                        }
                    )
                end

                return recipeData
            end
        end
    end

    return nil
end
