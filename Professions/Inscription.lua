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
        shouldCraft = {"Lion's Ink"};
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
            "1x Ethereal Ink, 1x Heavy Parchment", ------ Glyph of Feint
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Unbreakable Armor
        };
    elseif rank > 309 and rank < 315 then -- 310-314
        shouldCraft = {
            "Glyph of Rake",
            "Glyph of Rune Tap"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Rake
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Rune Tap
        };
    elseif rank > 314 and rank < 320 then -- 315-319
        shouldCraft = {
            "Glyph of Arcane Blast",
            "Glyph of Holy Nova",
            "Glyph of Rapid Fire"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Arcane Blast
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Holy Nova
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Rapid Fire
        };
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {
            "Glyph of Blood Strike",
            "Glyph of Sweeping Strikes"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Blood Strike
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Sweeping Strikes
        };
    elseif rank > 324 and rank < 330 then -- 325-329
        shouldCraft = {
            "Glyph of Blood Tap",
            "Glyph of Enduring Victory",
            "Glyph of Horn of Winter",
            "Glyph of Mage Armor",
            "Glyph of Succubus"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Blood Tap
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Enduring Victory
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Horn of Winter
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Mage Armor
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Succubus
        };
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {
            "Glyph of Scourge Strike",
            "Glyph of Windfury Weapon"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Scourge Strike
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Windfury Weapon
        };
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {
            "Glyph of Arcane Power",
            "Glyph of Seal of Command"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Arcane Power
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Seal of Command
        };
    elseif rank > 339 and rank < 345 then -- 340-344
        shouldCraft = {
            "Glyph of Ambush",
            "Glyph of Death Strike"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Ambush
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Death Strike
        };
    elseif rank > 344 and rank < 350 then -- 345-349
        shouldCraft = {
            "Glyph of Vampiric Blood",
            "Glyph of Whirlwind"
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Resilient Parchment", -- Glyph of Vampiric Blood
            "1x Ethereal Ink, 1x Resilient Parchment"  -- Glyph of Whirlwind
        };
    elseif rank > 349 and rank < 355 then -- 350-354
        shouldCraft = {"Ink of the Sea"};
        shouldCraftRecipe = {"2x Azure Pigment"};
    elseif rank > 354 and rank < 360 then -- 355-359
        shouldCraft = {"Scroll of Spirit VII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 359 and rank < 365 then -- 360-364
        shouldCraft = {"Scroll of Intellect VII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 364 and rank < 370 then -- 365-369
        shouldCraft = {"Scroll of Strength VII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 369 and rank < 375 then -- 370-374
        shouldCraft = {"Scroll of Agility VII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {"Snowfall Ink"};
        shouldCraftRecipe = {"2x Icy Pigment"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {"Glyph of Focus"};
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Resilient Parchment"};
    elseif rank > 384 and rank < 386 then -- 385
        shouldCraft = {
            "Northrend Inscription Research",
            "Glyph of Polymorph"
        };
        shouldCraftRecipe = {
            "3x Ink of the Sea, 1x Snowfall Ink, 5x Resilient Parchment", -- Northrend Inscription Research
            "1x Ink of the Sea, 1x Resilient Parchment"  ------------------- Northrend Inscription Research
        };
    elseif rank > 385 and rank < 400 then -- 386-399
        shouldCraft = {
            "Northrend Inscription Research",
            "Glyph of Polymorph",
            "Glyph of Adrenaline Rush",
            "Glyph of Lava",
            "Glyph of Anti-Magic Shell",
            "Glyph of Aspect of the Viper",
            "Glyph of Avenger's Shield",
            "Glyph of Avenging Wrath",
            "Glyph of Bestial Wrath",
            "Glyph of Blade Flurry",
            "Glyph of Blocking",
            "Glyph of Bloodthirst",
            "Glyph of Chain Heal",
            "Glyph of Chain Lightning",
            "Glyph of Chains of Ice",
            "Glyph of Circle of Healing",
            "Glyph of Conflagrate",
            "Glyph of Crippling Poison",
            "Glyph of Curse of Agony",
            "Glyph of Dark Command",
            "Glyph of Deadly Throw",
            "Glyph of Death and Decay",
            "Glyph of Death Coil",
            "Glyph of Devastate",
            "Glyph of Elemental Mastery",
            "Glyph of Felguard",
            "Glyph of Felhunter",
            "Glyph of Fire Blast",
            "Glyph of Fire Elemental Totem",
            "Glyph of Fireball",
            "Glyph of Frostbolt",
            "Glyph of Frostfire",
            "Glyph of Ghostly Strike",
            "Glyph of Growl",
            "Glyph of Hammer of Wrath",
            "Glyph of Healing Wave",
            "Glyph of Heart Strike",
            "Glyph of Hemorrhage",
            "Glyph of Holy Wrath",
            "Glyph of Howl of Terror",
            "Glyph of Hurricane",
            "Glyph of Icebound Fortitude",
            "Glyph of Immolate",
            "Glyph of Innervate",
            "Glyph of Intervene",
            "Glyph of Invisibility",
            "Glyph of Last Stand",
            "Glyph of Lifebloom",
            "Glyph of Lightwell",
            "Glyph of Mana Tide Totem",
            "Glyph of Mangle",
            "Glyph of Mass Dispel",
            "Glyph of Mind Control",
            "Glyph of Molten Armor",
            "Glyph of Mortal Strike",
            "Glyph of Obliterate",
            "Glyph of Prayer of Healing",
            "Glyph of Preparation",
            "Glyph of Regrowth",
            "Glyph of Remove Curse",
            "Glyph of Resonating Power",
            "Glyph of Rune Strike",
            "Glyph of Rupture",
            "Glyph of Seal of Light",
            "Glyph of Seal of Righteousness",
            "Glyph of Seal of Vengeance",
            "Glyph of Seal of Wisdom",
            "Glyph of Shadow",
            "Glyph of Shadow Word: Death",
            "Glyph of Shocking",
            "Glyph of Siphon Life",
            "Glyph of Snake Trap",
            "Glyph of Spirit of Redemption",
            "Glyph of Starfall",
            "Glyph of Steady Shot",
            "Glyph of Swiftmend",
            "Glyph of Taunt",
            "Glyph of the Beast",
            "Glyph of Trueshot Aura",
            "Glyph of Unstable Affliction",
            "Glyph of Victory Rush",
            "Glyph of Vigor",
            "Glyph of Volley",
            "Glyph of Water Elemental",
            "Glyph of Wyvern Sting"
        };
        shouldCraftRecipe = {
            "3x Ink of the Sea, 1x Snowfall Ink, 5x Resilient Parchment", -- Northrend Inscription Research
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Polymorph
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Adrenaline Rush
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Lava
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Anti-Magic Shell
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Aspect of the Viper
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Avenger's Shield
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Avenging Wrath
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Bestial Wrath
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Blade Flurry
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Blocking
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Bloodthirst
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Chain Heal
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Chain Lightning
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Chains of Ice
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Circle of Healing
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Conflagrate
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Crippling Poison
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Curse of Agony
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Dark Command
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Deadly Throw
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Death and Decay
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Death Coil
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Devastate
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Elemental Mastery
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Felguard
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Felhunter
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Fire Blast
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Fire Elemental Totem
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Fireball
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Frostbolt
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Frostfire
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Ghostly Strike
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Growl
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Hammer of Wrath
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Healing Wave
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Heart Strike
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Hemorrhage
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Holy Wrath
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Howl of Terror
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Hurricane
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Icebound Fortitude
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Immolate
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Innervate
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Intervene
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Invisibility
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Last Stand
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Lifebloom
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Lightwell
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mana Tide Totem
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mangle
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mass Dispel
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mind Control
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Molten Armor
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mortal Strike
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Obliterate
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Prayer of Healing
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Preparation
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Regrowth
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Remove Curse
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Resonating Power
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Rune Strike
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Rupture
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Seal of Light
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Seal of Righteousness
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Seal of Vengeance
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Seal of Wisdom
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Shadow
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Shadow Word: Death
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Shocking
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Siphon Life
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Snake Trap
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Spirit of Redemption
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Starfall
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Steady Shot
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Swiftmend
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Taunt
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of the Beast
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Trueshot Aura
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Unstable Affliction
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Victory Rush
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Vigor
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Volley
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Water Elemental
            "1x Ink of the Sea, 1x Resilient Parchment"  ------------------- Glyph of Wyvern Sting
        };
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {"Scroll of Stamina VIII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {"Scroll of Spirit VIII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {"Scroll of Intellect VIII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {"Scroll of Strength VIII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {"Scroll of Agility VIII"};
        shouldCraftRecipe = {"1x Ink of the Sea, 2x Resilient Parchment"};
    elseif rank > 424 and rank < 440 then -- 425-439
        shouldCraft = {
            "Northrend Inscription Research",
            "Glyph of Arcane Barrage",
            "Glyph of Barkskin",
            "Glyph of Beacon of Light",
            "Glyph of Berserk",
            "Glyph of Bladestorm",
            "Glyph of Chaos Bolt",
            "Glyph of Chimera Shot",
            "Glyph of Cloak of Shadows",
            "Glyph of Dancing Rune Weapon",
            "Glyph of Deep Freeze",
            "Glyph of Demonic Circle",
            "Glyph of Dispersion",
            "Glyph of Divine Plea",
            "Glyph of Divine Storm",
            "Glyph of Enraged Regeneration",
            "Glyph of Explosive Shot",
            "Glyph of Explosive Trap",
            "Glyph of Fan of Knives",
            "Glyph of Feral Spirit",
            "Glyph of Guardian Spirit",
            "Glyph of Hammer of the Righteous",
            "Glyph of Haunt",
            "Glyph of Hex",
            "Glyph of Holy Shock",
            "Glyph of Howling Blast",
            "Glyph of Hunger for Blood",
            "Glyph of Hungering Cold",
            "Glyph of Hymn of Hope",
            "Glyph of Ice Barrier",
            "Glyph of Kill Shot",
            "Glyph of Killing Spree",
            "Glyph of Life Tap",
            "Glyph of Living Bomb",
            "Glyph of Metamorphosis",
            "Glyph of Mind Sear",
            "Glyph of Mirror Image",
            "Glyph of Nourish",
            "Glyph of Penance",
            "Glyph of Raptor Strike",
            "Glyph of Riptide",
            "Glyph of Salvation",
            "Glyph of Savage Roar",
            "Glyph of Scatter Shot",
            "Glyph of Shadow Dance",
            "Glyph of Shadowflame",
            "Glyph of Shield of Righteousness",
            "Glyph of Shield Wall",
            "Glyph of Shockwave",
            "Glyph of Soul Link",
            "Glyph of Spell Reflection",
            "Glyph of Stoneclaw Totem",
            "Glyph of Survival Instincts",
            "Glyph of Thunder",
            "Glyph of Tricks of the Trade",
            "Glyph of Unholy Blight",
            "Glyph of Vigilance",
            "Glyph of Wild Growth"
        };
        shouldCraftRecipe = {
            "3x Ink of the Sea, 1x Snowfall Ink, 5x Resilient Parchment", -- Northrend Inscription Research
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Arcane Barrage
            "1x Celestial Ink, 1x Heavy Parchment", ------------------------ Glyph of Barkskin
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Beacon of Light
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Berserk
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Bladestorm
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Chaos Bolt
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Chimera Shot
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Cloak of Shadows
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Dancing Rune Weapon
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Deep Freeze
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Demonic Circle
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Dispersion
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Divine Plea
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Divine Storm
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Enraged Regeneration
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Explosive Shot
            "1x Jadefire Ink, 1x Common Parchment", ------------------------ Glyph of Explosive Trap
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Fan of Knives
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Feral Spirit
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Guardian Spirit
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Hammer of the Righteous
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Haunt
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Hex
            "1x Celestial Ink, 1x Common Parchment", ----------------------- Glyph of Holy Shock
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Howling Blast
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Hunger for Blood
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Hungering Cold
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Hymn of Hope
            "1x Celestial Ink, 1x Heavy Parchment", ------------------------ Glyph of Ice Barrier
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Kill Shot
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Killing Spree
            "1x Midnight Ink, 1x Light Parchment", ------------------------- Glyph of Life Tap
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Living Bomb
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Metamorphosis
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mind Sear
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Mirror Image
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Nourish
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Penance
            "1x Midnight Ink, 1x Light Parchment", ------------------------- Glyph of Raptor Strike
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Riptide
            "1x Lion's Ink, 1x Common Parchment", -------------------------- Glyph of Salvation
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Savage Roar
            "1x Lion's Ink, 1x Light Parchment", --------------------------- Glyph of Scatter Shot
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Shadow Dance
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Shadowflame
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Shield of Righteousness
            "1x Lion's Ink, 1x Common Parchment", -------------------------- Glyph of Shield Wall
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Shockwave
            "1x Lion's Ink, 1x Light Parchment", --------------------------- Glyph of Soul Link
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Spell Reflection
            "1x Midnight Ink, 1x Light Parchment", ------------------------- Glyph of Stoneclaw Totem
            "1x Ink of the Sea, 1x Light Parchment", ----------------------- Glyph of Survival Instincts
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Thunder
            "1x Ink of the Sea, 1x Resilient Parchment", ------------------- Glyph of Tricks of the Trade
            "1x Ethereal Ink, 1x Resilient Parchment", --------------------- Glyph of Unholy Blight
            "1x Celestial Ink, 1x Common Parchment", ----------------------- Glyph of Vigilance
            "1x Ethereal Ink, 1x Resilient Parchment" ---------------------- Glyph of Wild Growth
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            "Runescroll of Fortitude",
            "Northrend Inscription Research"
        };
        shouldCraftRecipe = {
            "1x Snowfall Ink, 5x Resilient Parchment", -------------------- Runescroll of Fortitude
            "3x Ink of the Sea, 1x Snowfall Ink, 5x Resilient Parchment" -- Northrend Inscription Research
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Inscription module|r');
