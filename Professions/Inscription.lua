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
    elseif rank > 154 and rank < 160 then -- 155-159
        shouldCraft = {
            "Glyph of Evocation",
            "Glyph of Righteous Defense"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Evocation
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Righteous Defense
        };
    elseif rank > 159 and rank < 165 then -- 160-164
        shouldCraft = {
            "Glyph of Gouge",
            "Glyph of Renew"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Gouge
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Renew
        };
    elseif rank > 164 and rank < 170 then -- 165-169
        shouldCraft = {
            "Glyph of Lava Lash",
            "Glyph of Shadow Bolt"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Lava Lash
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Shadow Bolt
        };
    elseif rank > 169 and rank < 175 then -- 170-174
        shouldCraft = {
            "Glyph of Overpower",
            "Glyph of Rebirth"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Overpower
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Rebirth
        };
    elseif rank > 174 and rank < 180 then -- 175-179
        shouldCraft = {
            "Glyph of Aimed Shot",
            "Glyph of Icy Veins",
            "Glyph of Levitate"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Aimed Shot
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Icy Veins
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Levitate
        };
    elseif rank > 179 and rank < 185 then -- 180-184
        shouldCraft = {
            "Glyph of Cleansing",
            "Glyph of Mind Flay"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Cleansing
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Mind Flay
        };
    elseif rank > 184 and rank < 190 then -- 185-189
        shouldCraft = {
            "Glyph of Frost Shock",
            "Glyph of Sap"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Frost Shock
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Sap
        };
    elseif rank > 189 and rank < 200 then -- 190-199
        shouldCraft = {
            "Glyph of Revenge",
            "Glyph of Voidwalker"
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Common Parchment", -- Glyph of Revenge
            "1x Jadefire Ink, 1x Common Parchment"  -- Glyph of Voidwalker
        };
    elseif rank > 199 and rank < 205 then -- 200-204
            shouldCraft = {"Celestial Ink"};
            shouldCraftRecipe = {"2x Violet Pigment"};
    elseif rank > 204 and rank < 210 then -- 205-209
            shouldCraft = {"Armor Vellum II"};
            shouldCraftRecipe = {"1x Celestial Ink, 2x Common Parchment"};
    elseif rank > 209 and rank < 215 then -- 210-214
        shouldCraft = {
            "Glyph of Sinister Strike",
            "Glyph of Smite"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Sinister Strike
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Smite
        };
    elseif rank > 214 and rank < 220 then -- 215-219
        shouldCraft = {
            "Glyph of Healing Stream Totem",
            "Glyph of Searing Pain"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Healing Stream Totem
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Searing Pain
        };
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {
            "Glyph of Barbaric Insults",
            "Glyph of Starfire"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Barbaric Insults
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Starfire
        };
    elseif rank > 224 and rank < 230 then -- 225-229
        shouldCraft = {
            "Glyph of Disengage",
            "Glyph of Ice Block"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Disengage
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Ice Block
        };
    elseif rank > 229 and rank < 235 then -- 230-234
        shouldCraft = {
            "Glyph of Crusader Strike",
            "Glyph of Dispel Magic"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Crusader Strike
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Dispel Magic
        };
    elseif rank > 234 and rank < 240 then -- 235-239
        shouldCraft = {
            "Glyph of Lesser Healing Wave",
            "Glyph of Slice and Dice"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Lesser Healing Wave
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Slice and Dice
        };
    elseif rank > 239 and rank < 250 then -- 240-249
        shouldCraft = {
            "Glyph of Cleaving",
            "Glyph of Soulstone"
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Heavy Parchment", -- Glyph of Cleaving
            "1x Celestial Ink, 1x Heavy Parchment"  -- Glyph of Soulstone
        };
    elseif rank > 249 and rank < 255 then -- 250-254
            shouldCraft = {"Shimmering Ink"};
            shouldCraftRecipe = {"2x Silvery Pigment"};
    elseif rank > 254 and rank < 260 then -- 255-259
        shouldCraft = {"Scroll of Spirit V"};
        shouldCraftRecipe = {"1x Shimmering Ink, 2x Heavy Parchment"};
    elseif rank > 259 and rank < 265 then -- 260-264
        shouldCraft = {
            "Glyph of Freezing Trap",
            "Glyph of Shred"
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Freezing Trap
            "1x Shimmering Ink, 1x Heavy Parchment"  -- Glyph of Shred
        };
    elseif rank > 264 and rank < 270 then -- 265-269
        shouldCraft = {
            "Glyph of Bone Shield",
            "Glyph of Exorcism"
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Bone Shield
            "1x Shimmering Ink, 1x Heavy Parchment"  -- Glyph of Exorcism
        };
    elseif rank > 269 and rank < 275 then -- 270-274
        shouldCraft = {
            "Glyph of Fear Ward",
            "Glyph of Frost Strike"
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Fear Ward
            "1x Shimmering Ink, 1x Heavy Parchment"  -- Glyph of Frost Strike
        };
    elseif rank > 274 and rank < 280 then -- 275-279
        shouldCraft = {
            "Glyph of Shadowburn",
            "Glyph of Water Mastery",
            "Glyph of Dark Death"
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Shadowburn
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Water Mastery
            "1x Shimmering Ink, 1x Heavy Parchment"  -- Glyph of Dark Death
        };
    elseif rank > 279 and rank < 285 then -- 280-284
        shouldCraft = {
            "Glyph of Disease",
            "Glyph of Icy Touch",
            "Glyph of Mana Gem"
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Disease
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Icy Touch
            "1x Shimmering Ink, 1x Heavy Parchment"  -- Glyph of Mana Gem
        };
    elseif rank > 284 and rank < 290 then -- 285-289
        shouldCraft = {
            "Glyph of Death Grip",
            "Glyph of Execution",
            "Glyph of Sprint"
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Death Grip
            "1x Shimmering Ink, 1x Heavy Parchment", -- Glyph of Execution
            "1x Shimmering Ink, 1x Heavy Parchment"  -- Glyph of Sprint
        };
    elseif rank > 289 and rank < 305 then -- 290-304
            shouldCraft = {"Ethereal Ink"};
            shouldCraftRecipe = {"2x Nether Pigment"};
    elseif rank > 304 and rank < 310 then -- 305-309
        shouldCraft = {
            "Glyph of Feint",
            "Glyph of Unbreakable Armor"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Heavy Parchment", -- Glyph of Feint
            "1x Ethereal Ink, 1x Heavy Parchment"  -- Glyph of Unbreakable Armor
        };
    elseif rank > 309 and rank < 315 then -- 310-314
        shouldCraft = {
            "Glyph of Rake",
            "Glyph of Rune Tap"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Heavy Parchment", -- Glyph of Rake
            "1x Ethereal Ink, 1x Heavy Parchment"  -- Glyph of Rune Tap
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Inscription module|r');
