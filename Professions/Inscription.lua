addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getInscriptionCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 19 then -- 1-18
        shouldCraft = {"Ivory Ink"};
        shouldCraftRecipe = {"1x Alabaster Pigment"};
    elseif rank > 18 and rank < 35 then -- 19-34
        shouldCraft = {"Scroll of Stamina"};
        shouldCraftRecipe = {"1x Ivory Ink, 1x Light Parchment"};
    elseif rank > 34 and rank < 53 then -- 35-52
        shouldCraft = {"Moonglow Ink"};
        shouldCraftRecipe = {"2x Alabaster Pigment"};
    elseif rank > 52 and rank < 75 then -- 53-74
        shouldCraft = {"Armor Vellum"};
        shouldCraftRecipe = {"1x Moonglow Ink, 2x Light Parchment"};
    elseif rank > 74 and rank < 80 then -- 75-79
        shouldCraft = {"Midnight Ink"};
        shouldCraftRecipe = {"2x Dusky Pigment"};
    elseif rank > 79 and rank < 85 then -- 80-84
        shouldCraft = {
            "Glyph of Backstab",
            "Glyph of Frost Nova",
            "Glyph of Hunter's Mark",
            "Glyph of Power Word: Shield",
            "Glyph of Rejuvenation",
            "Glyph of Spiritual Attunement"
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Backstab
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Frost Nova
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Hunter's Mark
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Power Word: Shield
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Rejuvenation
            "1x Midnight Ink, 1x Light Parchment"  -- Glyph of Spiritual Attunement
        };
    elseif rank > 84 and rank < 90 then -- 85-89
        shouldCraft = {
            "Glyph of Backstab",
            "Glyph of Frost Nova",
            "Glyph of Hunter's Mark",
            "Glyph of Power Word: Shield",
            "Glyph of Rejuvenation",
            "Glyph of Spiritual Attunement",
            "Glyph of Corruption",
            "Glyph of Flame Shock",
            "Glyph of Rapid Charge",
            "Glyph of Wrath"
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Backstab
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Frost Nova
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Hunter's Mark
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Power Word: Shield
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Rejuvenation
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Spiritual Attunement
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Corruption
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Flame Shock
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Rapid Charge
            "1x Midnight Ink, 1x Light Parchment"  -- Glyph of Wrath
        };
    elseif rank > 89 and rank < 95 then -- 90-94
        shouldCraft = {
            "Glyph of Corruption",
            "Glyph of Flame Shock",
            "Glyph of Rapid Charge",
            "Glyph of Wrath",
            "Glyph of Hammer of Justice",
            "Glyph of Ice Armor",
            "Glyph of Maul",
            "Glyph of Serpent Sting"
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Corruption
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Flame Shock
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Rapid Charge
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Wrath
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Hammer of Justice
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Ice Armor
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Maul
            "1x Midnight Ink, 1x Light Parchment"  -- Glyph of Serpent Sting
        };
    elseif rank > 94 and rank < 100 then -- 95-99
        shouldCraft = {
            "Glyph of Hammer of Justice",
            "Glyph of Ice Armor",
            "Glyph of Maul",
            "Glyph of Serpent Sting"
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Hammer of Justice
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Ice Armor
            "1x Midnight Ink, 1x Light Parchment", -- Glyph of Maul
            "1x Midnight Ink, 1x Light Parchment"  -- Glyph of Serpent Sting
        };
    elseif rank > 99 and rank < 105 then -- 100-104
        shouldCraft = {"Lion’s Ink"};
        shouldCraftRecipe = {"2x Golden Pigment"};
    elseif rank > 104 and rank < 110 then -- 105-109
        shouldCraft = {
            "Glyph of Eviscerate",
            "Glyph of Fade",
            "Glyph of Holy Light"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Eviscerate
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Fade
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Holy Light
        };
    elseif rank > 109 and rank < 115 then -- 110-114
        shouldCraft = {
            "Glyph of Fire Nova",
            "Glyph of Health Funnel",
            "Glyph of Rending"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Fire Nova
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Health Funnel
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Rending
        };
    elseif rank > 114 and rank < 120 then -- 115-119
        shouldCraft = {
            "Glyph of Arcane Missiles",
            "Glyph of Healing Touch",
            "Glyph of Mending"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Arcane Missiles
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Healing Touch
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Mending
        };
    elseif rank > 119 and rank < 125 then -- 120-124
        shouldCraft = {
            "Glyph of Expose Armor",
            "Glyph of Flash Heal",
            "Glyph of Judgement"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Expose Armor
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Flash Heal
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Judgement
        };
    elseif rank > 124 and rank < 130 then -- 125-129
        shouldCraft = {
            "Glyph of Distract",
            "Glyph of Fear",
            "Glyph of Flametongue Weapon",
            "Glyph of Frost Ward",
            "Glyph of Hamstring",
            "Glyph of Kilrogg",
            "Glyph of Vanish",
            "Glyph of Water Breathing"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Distract
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Fear
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Flametongue Weapon
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Frost Ward
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Hamstring
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Kilrogg
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Vanish
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Water Breathing
        };
    elseif rank > 129 and rank < 135 then -- 130-134
        shouldCraft = {
            "Glyph of Blink",
            "Glyph of Immolation Trap",
            "Glyph of Moonfire"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Blink
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Immolation Trap
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Moonfire
        };
    elseif rank > 134 and rank < 140 then -- 135-139
        shouldCraft = {
            "Glyph of Divinity",
            "Glyph of Garrote",
            "Glyph of Inner Fire"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Divinity
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Garrote
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Inner Fire
        };
    elseif rank > 139 and rank < 150 then -- 140-149
        shouldCraft = {
            "Glyph of Imp",
            "Glyph of Lightning Bolt",
            "Glyph of Sunder Armor"
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Imp
            "1x Lion's Ink, 1x Common Parchment", -- Glyph of Lightning Bolt
            "1x Lion's Ink, 1x Common Parchment"  -- Glyph of Sunder Armor
        };
    elseif rank > 149 and rank < 155 then -- 150-154
            shouldCraft = {"Jadefire Ink"};
            shouldCraftRecipe = {"2x Emerald Pigment"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Inscription module|r');
