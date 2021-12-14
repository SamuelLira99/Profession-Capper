local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 30 then -- 1-29
        shouldCraft = {"Delicate Copper Wire"};
        shouldCraftRecipe = {"2x Copper Bar"};
    elseif rank > 29 and rank < 50 then -- 30-49
        shouldCraft = {
            "Tigerseye Band",
            "Malachite Pendant"
        };
        shouldCraftRecipe = {
            "1x Tigerseye, 1x Delicate Copper Wire", -- Tigerseye Band
            "1x Malachite, 1x Delicate Copper Wire" --- Malachite Pendant
        };
    elseif rank > 49 and rank < 80 then -- 50-79
        shouldCraft = {
          "Bronze Setting",
          "Tigerseye Band",
          "Malachite Pendant"
        };
        shouldCraftRecipe = {
          "2x Bronze Bar", -------------------------- Bronze Setting
          "1x Tigerseye, 1x Delicate Copper Wire", -- Tigerseye Band
          "1x Malachite, 1x Delicate Copper Wire" --- Malachite Pendant
        };
    elseif rank > 79 and rank < 100 then -- 80-99 # Add alts
        shouldCraft = {
          "Ring of Silver Might",
          "Gloom Band",
          "Simple Pearl Ring"
        };
        shouldCraftRecipe = {
          "2x Silver Bar", --------------------------------------------- Ring of Silver Might
          "1x Bronze Setting, 2x Shadowgem, 2x Delicate Copper Wire", -- Gloom Band
          "1x Small Lustrous Pearl, 1x Bronze Setting, 2x Copper Bar" -- Simple Pearl Ring
        };
    elseif rank > 99 and rank < 110 then -- 100-109
        shouldCraft = {
          "Ring of Twilight Shadows",
          "Ring of Silver Might",
          "Gloom Band",
          "Simple Pearl Ring"
        };
        shouldCraftRecipe = {
          "2x Shadowgem, 2x Bronze Bar", ------------------------------- Ring of Twilight Shadows
          "2x Silver Bar", --------------------------------------------- Ring of Silver Might
          "1x Bronze Setting, 2x Shadowgem, 2x Delicate Copper Wire", -- Gloom Band
          "1x Small Lustrous Pearl, 1x Bronze Setting, 2x Copper Bar" -- Simple Pearl Ring
        };
    elseif rank > 109 and rank < 120 then -- 110-119
        shouldCraft = {
          "Heavy Stone Statue",
          "Ring of Twilight Shadows",
          "Ring of Silver Might"
        };
        shouldCraftRecipe = {
          "8x Heavy Stone", --------------- Heavy Stone Statue
          "2x Shadowgem, 2x Bronze Bar", -- Ring of Twilight Shadows
          "2x Silver Bar" ----------------- Ring of Silver Might
        };
    elseif rank > 119 and rank < 150 then -- 120-149
        shouldCraft = {
          "Pendant of the Agate Shield",
          "Heavy Stone Statue",
          "Ring of Twilight Shadows"

        };
        shouldCraftRecipe = {
          "1x Moss Agate, 1x Bronze Setting", -- Pendant of the Agate Shield
          "8x Heavy Stone", -------------------- Heavy Stone Statue
          "2x Shadowgem, 2x Bronze Bar" -------- Ring of Twilight Shadows
        };
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
        shouldCraft = {
          "Aquamarine Pendant of the Warrior",
          "Citrine Ring of Rapid Healing"
        };
        shouldCraftRecipe = {
          "1x Aquamarine, 3x Mithril Filigree", -- Aquamarine Pendant of the Warrior
          "1x Citrine, 2x Mithril Bar" ----------- Citrine Ring of Rapid Healing
        };
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
          "Glowing Thorium Band",
          "Sapphire Pendant of Winter Night",
          "Onslaught Ring"
        };
        shouldCraftRecipe = {
          "2x Azerothian Diamond", ---------------------------------------- Glowing Thorium Band
          "1x Blue Sapphire, 1x Essence of Undeath, 1x Thorium Setting", -- Sapphire Pendant of Winter Night
          "1x Powerful Mojo, 1x Essence of Earth, 1x Thorium Setting" ----- Onslaught Ring
        };
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
          "Emerald Lion Ring",
          "Glowing Thorium Band",
          "Sapphire Pendant of Winter Night",
          "Onslaught Ring"
        };
        shouldCraftRecipe = {
          "2x Huge Emerald, 1x Thorium Setting", -------------------------- Emerald Lion Ring
          "2x Azerothian Diamond", ---------------------------------------- Glowing Thorium Band
          "1x Blue Sapphire, 1x Essence of Undeath, 1x Thorium Setting", -- Sapphire Pendant of Winter Night
          "1x Powerful Mojo, 1x Essence of Earth, 1x Thorium Setting" ----- Onslaught Ring
        };
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
            "1x Blood Garnet", ------- Teardrop Blood Garnet
            "1x Golden Draenite", ---- Brilliant Golden Draenite
            "1x Azure Moonstone", ---- Solid Azure Moonstone
            "1x Deep Peridot", ------- Radiant Deep Peridot
            "1x Flame Spessarite", --- Inscribed Flame Spessarite
            "1x Shadow Draenite", ---- Glowing Shadow Draenite
            "1x Black Diamond" ------- Prismatic Black Diamond
        };
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {
            "Bold Blood Garnet",
            "Bright Blood Garnet",
            "Jagged Deep Peridot",
            "Sparkling Azure Moonstone",
            "Gleaming Golden Draenite",
            "Luminous Flame Spessarite",
            "Royal Shadow Draenite"
        };
        shouldCraftRecipe = {
            "1x Blood Garnet", ------ Bold Blood Garnet
            "1x Blood Garnet", ------ Bright Blood Garnet
            "1x Deep Peridot", ------ Jagged Deep Peridot
            "1x Azure Moonstone", --- Sparkling Azure Moonstone
            "1x Golden Draenite", --- Gleaming Golden Draenite
            "1x Flame Spessarite", -- Luminous Flame Spessarite
            "1x Shadow Draenite" ---- Royal Shadow Draenite

        };
        -- Check if this change will not result in missing material for any future(higher level) recipe
    elseif rank > 324 and rank < 340 then -- 325-339
        shouldCraft = {
          "Mercurial Adamantite",
          "Rigid Golden Draenite",
          "Smooth Golden Draenite",
          "Sovereign Shadow Draenite",
          "Dazzling Deep Peridot",
          "Delicate Blood Garnet",
          "Potent Flame Spessarite",
          "Great Golden Draenite",
          "Balanced Shadow Draenite",
          "Infused Shadow Draenite",
          "Lustrous Azure Moonstone",
          "Veiled Flame Spessarite",
          "Wicked Flame Spessarite"
        };
        shouldCraftRecipe = {
          "4x Adamantite Powder, 1x Primal Earth", -- Mercurial Adamantite
          "1x Golden Draenite", --------------------- Rigid Golden Draenite
          "1x Golden Draenite", --------------------- Smooth Golden Draenite
          "1x Shadow Draenite", --------------------- Sovereign Shadow Draenite
          "1x Deep Peridot", ------------------------ Dazzling Deep Peridot
          "1x Blood Garnet", ------------------------ Delicate Blood Garnet
          "1x Flame Spessarite", -------------------- Potent Flame Spessarite
          "1x Golden Draenite", --------------------- Great Golden Draenite
          "1x Shadow Draenite", --------------------- Balanced Shadow Draenite
          "1x Shadow Draenite", --------------------- Infused Shadow Draenite
          "1x Azure Moonstone", --------------------- Lustrous Azure Moonstone
          "1x Flame Spessarite", -------------------- Veiled Flame Spessarite
          "1x Flame Spessarite" --------------------- Wicked Flame Spessarite
        };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
          "Heavy Adamantite Ring",
          "Rigid Golden Draenite",
          "Smooth Golden Draenite",
          "Sovereign Shadow Draenite",
          "Dazzling Deep Peridot",
          "Delicate Blood Garnet",
          "Potent Flame Spessarite",
          "Great Golden Draenite",
          "Balanced Shadow Draenite",
          "Infused Shadow Draenite",
          "Lustrous Azure Moonstone",
          "Veiled Flame Spessarite",
          "Wicked Flame Spessarite"
        };
        shouldCraftRecipe = {
          "1x Adamantite Bar, 1x Mercurial Adamantite", -- Heavy Adamantite Ring
          "1x Golden Draenite", -------------------------- Rigid Golden Draenite
          "1x Golden Draenite", -------------------------- Smooth Golden Draenite
          "1x Shadow Draenite", -------------------------- Sovereign Shadow Draenite
          "1x Deep Peridot", ----------------------------- Dazzling Deep Peridot
          "1x Blood Garnet", ----------------------------- Delicate Blood Garnet
          "1x Flame Spessarite", ------------------------- Potent Flame Spessarite
          "1x Golden Draenite", -------------------------- Great Golden Draenite
          "1x Shadow Draenite", -------------------------- Balanced Shadow Draenite
          "1x Shadow Draenite", -------------------------- Infused Shadow Draenite
          "1x Azure Moonstone", -------------------------- Lustrous Azure Moonstone
          "1x Flame Spessarite", ------------------------- Veiled Flame Spessarite
          "1x Flame Spessarite" -------------------------- Wicked Flame Spessarite
        };
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
        };
        shouldCraftRecipe = {
            "1x Bloodstone", ------- Bold Bloodstone
            "1x Bloodstone", ------- Bright Bloodstone
            "1x Bloodstone", ------- Delicate Bloodstone
            "1x Bloodstone", ------- Flashing Bloodstone
            "1x Bloodstone", ------- Fractured Bloodstone
            "1x Bloodstone", ------- Precise Bloodstone
            "1x Bloodstone", ------- Runed Bloodstone
            "1x Bloodstone", ------- Subtle Bloodstone
            "1x Chalcedony", ------- Lustrous Chalcedony
            "1x Chalcedony", ------- Solid Chalcedony
            "1x Chalcedony", ------- Sparkling Chalcedony
            "1x Chalcedony", ------- Stormy Chalcedony
            "1x Dark Jade", -------- Dazzling Dark Jade
            "1x Dark Jade", -------- Enduring Dark Jade
            "1x Dark Jade", -------- Energized Dark Jade
            "1x Dark Jade", -------- Forceful Dark Jade
            "1x Dark Jade", -------- Intricate Dark Jade
            "1x Dark Jade", -------- Jagged Dark Jade
            "1x Dark Jade", -------- Lambent Dark Jade
            "1x Dark Jade", -------- Misty Dark Jade
            "1x Dark Jade", -------- Opaque Dark Jade
            "1x Dark Jade", -------- Radiant Dark Jade
            "1x Dark Jade", -------- Seer's Dark Jade
            "1x Dark Jade", -------- Shattered Dark Jade
            "1x Dark Jade", -------- Shining Dark Jade
            "1x Dark Jade", -------- Steady Dark Jade
            "1x Dark Jade", -------- Sundered Dark Jade
            "1x Dark Jade", -------- Tense Dark Jade
            "1x Dark Jade", -------- Timeless Dark Jade
            "1x Dark Jade", -------- Turbid Dark Jade
            "1x Dark Jade", -------- Vivid Dark Jade
            "1x Huge Citrine", ----- Accurate Huge Citrine
            "1x Huge Citrine", ----- Champion's Huge Citrine
            "1x Huge Citrine", ----- Deadly Huge Citrine
            "1x Huge Citrine", ----- Deft Huge Citrine
            "1x Huge Citrine", ----- Durable Huge Citrine
            "1x Huge Citrine", ----- Empowered Huge Citrine
            "1x Huge Citrine", ----- Etched Huge Citrine
            "1x Huge Citrine", ----- Fierce Huge Citrine
            "1x Huge Citrine", ----- Glimmering Huge Citrine
            "1x Huge Citrine", ----- Glinting Huge Citrine
            "1x Huge Citrine", ----- Inscribed Huge Citrine
            "1x Huge Citrine", ----- Lucent Huge Citrine
            "1x Huge Citrine", ----- Luminous Huge Citrine
            "1x Huge Citrine", ----- Potent Huge Citrine
            "1x Huge Citrine", ----- Pristine Huge Citrine
            "1x Huge Citrine", ----- Reckless Huge Citrine
            "1x Huge Citrine", ----- Resolute Huge Citrine
            "1x Huge Citrine", ----- Resplendent Huge Citrine
            "1x Huge Citrine", ----- Stalwart Huge Citrine
            "1x Huge Citrine", ----- Stark Huge Citrine
            "1x Huge Citrine", ----- Veiled Huge Citrine
            "1x Huge Citrine", ----- Wicked Huge Citrine
            "1x Shadow Crystal", --- Balanced Shadow Crystal
            "1x Shadow Crystal", --- Defender's Shadow Crystal
            "1x Shadow Crystal", --- Glowing Shadow Crystal
            "1x Shadow Crystal", --- Guardian's Shadow Crystal
            "1x Shadow Crystal", --- Infused Shadow Crystal
            "1x Shadow Crystal", --- Mysterious Shadow Crystal
            "1x Shadow Crystal", --- Puissant Shadow Crystal
            "1x Shadow Crystal", --- Purified Shadow Crystal
            "1x Shadow Crystal", --- Regal Shadow Crystal
            "1x Shadow Crystal", --- Royal Shadow Crystal
            "1x Shadow Crystal", --- Shifting Shadow Crystal
            "1x Shadow Crystal", --- Sovereign Shadow Crystal
            "1x Shadow Crystal", --- Tenuous Shadow Crystal
            "1x Sun Crystal", ------ Brilliant Sun Crystal
            "1x Sun Crystal", ------ Mystic Sun Crystal
            "1x Sun Crystal", ------ Quick Sun Crystal
            "1x Sun Crystal", ------ Rigid Sun Crystal
            "1x Sun Crystal", ------ Smooth Sun Crystal
            "1x Sun Crystal" ------- Thick Sun Crystal
        };
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {
            "Bloodstone Band",
            "Crystal Chalcedony Amulet",
            "Crystal Citrine Necklace",
            "Sun Rock Ring"
        };
        shouldCraftRecipe = {
            "1x Bloodstone, 2x Crystallized Earth", ----- Bloodstone Band
            "1x Chalcedony, 2x Crystallized Earth", ----- Crystal Chalcedony Amulet
            "1x Huge Citrine, 2x Crystallized Earth", --- Crystal Citrine Necklace
            "1x Sun Crystal, 2x Crystallized Earth" ----- Sun Rock Ring
        };
    elseif rank > 399 and rank < 420 then -- 400-419
        shouldCraft = {
            "Stoneguard Band",
            "Shadowmight Ring"
        };
        shouldCraftRecipe = {
            "2x Eternal Earth", ------------------- Stoneguard Band
            "1x Eternal Earth, 1x Eternal Shadow"-- Shadowmight Ring
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {
          "Dazzling Forest Emerald",
          "Balanced Twilight Opal",
          "Bright Scarlet Ruby",
          "Brilliant Autumn's Glow",
          "Pristine Monarch Topaz",
          "Sparkling Sky Sapphire",
          "Enchanted Tear"
        };
        shouldCraftRecipe = {
          "1x Forest Emerald", ----------------- Dazzling Forest Emerald
          "1x Twilight Opal", ------------------ Balanced Twilight Opal
          "1x Scarlet Ruby", ------------------- Bright Scarlet Ruby
          "1x Autumn's Glow", ------------------ Brilliant Autumn's Glow
          "1x Monarch Topaz", ------------------ Pristine Monarch Topaz
          "1x Sky Sapphire", ------------------- Sparkling Sky Sapphire
          "1x Siren's Tear, 4x Infinite Dust" -- Enchanted Tear
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {
            "Swift Skyflare Diamond",
            "Tireless Skyflare Diamond",
            "Chaotic Skyflare Diamond",
            "Destructive Skyflare Diamond",
            "Effulgent Skyflare Diamond",
            "Ember Skyflare Diamond",
            "Enigmatic Skyflare Diamond", -- before the addon support alternative recipes for same skill level, I chose this one as a reference to TERA's variations of enigmatic scrolls
            "Forlorn Skyflare Diamond",
            "Impassive Skyflare Diamond",
            "Revitalizing Skyflare Diamond",
            "Thundering Skyflare Diamond",
            "Persistent Earthsiege Diamond",
            "Powerful Earthsiege Diamond",
            "Austere Earthsiege Diamond",
            "Beaming Earthsiege Diamond",
            "Bracing Earthsiege Diamond",
            "Eternal Earthsiege Diamond",
            "Insightful Earthsiege Diamond",
            "Invigorating Earthsiege Diamond",
            "Relentless Earthsiege Diamond",
            "Trenchant Earthsiege Diamond"
        };
        shouldCraftRecipe = {
            "1x Skyflare Diamond", ---- Swift Skyflare Diamond
            "1x Skyflare Diamond", ---- Tireless Skyflare Diamond
            "1x Skyflare Diamond", ---- Chaotic Skyflare Diamond
            "1x Skyflare Diamond", ---- Destructive Skyflare Diamond
            "1x Skyflare Diamond", ---- Effulgent Skyflare Diamond
            "1x Skyflare Diamond", ---- Ember Skyflare Diamond
            "1x Skyflare Diamond", ---- Enigmatic Skyflare Diamond
            "1x Skyflare Diamond", ---- Forlorn Skyflare Diamond
            "1x Skyflare Diamond", ---- Impassive Skyflare Diamond
            "1x Skyflare Diamond", ---- Revitalizing Skyflare Diamond
            "1x Skyflare Diamond", ---- Thundering Skyflare Diamond
            "1x Earthsiege Diamond", -- Persistent Earthsiege Diamond
            "1x Earthsiege Diamond", -- Powerful Earthsiege Diamond
            "1x Earthsiege Diamond", -- Austere Earthsiege Diamond
            "1x Earthsiege Diamond", -- Beaming Earthsiege Diamond
            "1x Earthsiege Diamond", -- Bracing Earthsiege Diamond
            "1x Earthsiege Diamond", -- Eternal Earthsiege Diamond
            "1x Earthsiege Diamond", -- Insightful Earthsiege Diamond
            "1x Earthsiege Diamond", -- Invigorating Earthsiege Diamond
            "1x Earthsiege Diamond", -- Relentless Earthsiege Diamond
            "1x Earthsiege Diamond" --- Trenchant Earthsiege Diamond
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Jewelcrafting module|r');
