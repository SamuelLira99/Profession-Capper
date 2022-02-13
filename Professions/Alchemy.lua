addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getAlchemyCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 60 then -- 1-59
        shouldCraft = {
            "Minor Healing Potion",
            "Elixir of Lion's Strength",
            "Elixir of Minor Defense"
        };
        shouldCraftRecipe = {
            "1x Peacebloom, 1x Sliverleaf, 1x Empty Vial", -- Minor Healing Potion
            "1x Earthroot, 1x Sliverleaf, 1x Empty Vial", --- Elixir of Lion's Strength
            "2x Sliverleaf, 1x Empty Vial" ------------------ Elixir of Minor Defense
        };
    elseif rank > 59 and rank < 80 then -- 60-79
        shouldCraft = {"Lesser Healing Potion"};
        shouldCraftRecipe = {"1x Minor Healing Potion, 1x Briarthorn"};
    elseif rank > 79 and rank < 90 then -- 80-89
        shouldCraft = {
            "Lesser Healing Potion",
            "Blackmouth Oil"
        };
        shouldCraftRecipe = {
            "1x Minor Healing Potion, 1x Briarthorn", -- Lesser Healing Potion
            "2x Oily Blackmouth" ----------------------- Blackmouth Oil
        };
    elseif rank > 89 and rank < 105 then -- 90-104
        shouldCraft = {"Lesser Healing Potion"};
        shouldCraftRecipe = {"1x Minor Healing Potion, 1x Briarthorn"};
    elseif rank > 104 and rank < 110 then -- 105-109
        shouldCraft = {
            "Elixir of Wisdom",
            "Elixir of Water Breathing"
        };
        shouldCraftRecipe = {
            "1x Mageroyal, 1x Briarthorn, 1x Empty Vial", -------- Elixir of Wisdom
            "1x Stranglekelp, 2x Blackmouth Oil, 1x Empty Vial" -- Elixir of Water Breathing
        };
    elseif rank > 109 and rank < 140 then -- 110-139
        shouldCraft = {
            "Healing Potion",
            "Swim Speed Potion",
            "Holy Protection Potion"
        };
        shouldCraftRecipe = {
            "1x Bruiseweed, 1x Briarthorn, 1x Leaded Vial", ------- Healing Potion
            "1x Swiftthistle, 1x Blackmouth Oil, 1x Empty Vial", -- Swim Speed Potion
            "1x Bruiseweed, 1x Swiftthistle, 1x Empty Vial" ------- Holy Protection Potion
        };
    elseif rank > 139 and rank < 155 then -- 140-154
        shouldCraft = {
            "Lesser Mana Potion",
            "Healing Potion"
        };
        shouldCraftRecipe = {
            "1x Mageroyal, 1x Stranglekelp, 1x Empty Vial", -- Lesser Mana Potion
            "1x Bruiseweed, 1x Briarthorn, 1x Leaded Vial" --- Healing Potion
        };
    elseif rank > 154 and rank < 185 then -- 155-184
        shouldCraft = {
            "Greater Healing Potion",
            "Elixir of Ogre's Strength"
        };
        shouldCraftRecipe = {
            "1x Liferoot, 1x Kingsblood, 1x Leaded Vial", -- Greater Healing Potion
            "1x Earthroot, 1x Kingsblood, 1x Leaded Vial" -- Elixir of Ogre's Strength
        };
    elseif rank > 184 and rank < 205 then -- 185-204
        shouldCraft = {
            "Elixir of Agility",
            "Major Troll's Blood Elixir",
            "Elixir of Fortitude"
        };
        shouldCraftRecipe = {
            "1x Stranglekelp, 1x Goldthorn, 1x Leaded Vial", ---- Elixir of Agility
            "1x Liferoot, 11x Bruiseweed, 1x Leaded Vial", ------ Major Troll's Blood Elixir
            "1x Wild Steelbloom, 1x Goldthorn, 1x Leaded Vial" -- Elixir of Fortitude
        };
    elseif rank > 204 and rank < 215 then -- 205-214
        shouldCraft = {
            "Catseye Elixir",
            "Elixir of Greater Defense"
        };
        shouldCraftRecipe = {
            "1x Goldthorn, 1x Fadelaf, 1x Leaded Vial", ---------- Catseye Elixir
            "1x Wild Steelbloom, 1x Goldthorn, 1x Leaded Vial" -- Elixir of Greater Defense
        };
    elseif rank > 214 and rank < 220 then -- 215-219
        shouldCraft = {
            "Superior Healing Potion",
            "Greater Mana Potion",
            "Catseye Elixir"
        };
        shouldCraftRecipe = {
            "1x Sungrass, 1x Khadgar's Whisker, 1x Crystal Vial", -- Superior Healing Potion
            "1x Khadgar's Whisker, 1x Goldthorn, 1x Leaded Vial", -- Greater Mana Potion
            "1x Goldthorn, 1x Fadelaf, 1x Leaded Vial" ------------- Elixir of Greater Defense
        };
    elseif rank > 219 and rank < 230 then -- 220-229
        shouldCraft = {"Superior Healing Potion"};
        shouldCraftRecipe = {"1x Sungrass, 1x Khadgar's Whisker, 1x Crystal Vial"};
    elseif rank > 229 and rank < 231 then -- 230
        shouldCraft = {"Philosopher's Stone"};
        shouldCraftRecipe = {"4x Iron Bar, 1x Black Vitriol, 4x Purple Lotus, 4x Firebloom"};
    elseif rank > 230 and rank < 250 then -- 231-249
        shouldCraft = {"Elixir of Detect Undead"};
        shouldCraftRecipe = {"1x Arthas' Tears, 1x Crystal Vial"};
    elseif rank > 249 and rank < 265 then -- 250-264
        shouldCraft = {
          "Elixir of Greater Agility",
          "Elixir of Detect Undead"
        };
        shouldCraftRecipe = {
          "1x Sungrass, 1x Goldthorn, 1x Crystal Vial", -- Elixir of Greater Agility
          "1x Arthas' Tears, 1x Crystal Vial" ------------ Elixir of Detect Undead
        };
    elseif rank > 264 and rank < 285 then -- 265-284
        shouldCraft = {"Superior Mana Potion"};
        shouldCraftRecipe = {"2x Sungrass, 2x Blindweed, 1x Crystal Vial"};
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {
          "Major Healing Potion",
          "Superior Mana Potion"
        };
        shouldCraftRecipe = {
          "2x Golden Sansam, 1x Mountain Silversage, 1x Crystal vial", -- Major Healing Potion
          "2x Sungrass, 2x Blindweed, 1x Crystal Vial" ------------------ Superior Mana Potion
        };
    elseif rank > 299 and rank < 310 then -- 300-309
        shouldCraft = {
            "Volatile Healing Potion",
            "Adept's Elixir"
        };
        shouldCraftRecipe = {
            "1x Golden Sansam, 1x Felweed, 1x Imbued Vial", -- Volatile Healing Potion
            "1x Dreamfoil, 1x Felweed, 1x Imbued Vial" ------- Adept's Elixir
        };
    elseif rank > 309 and rank < 325 then -- 310-324
        shouldCraft = {"Elixir of Healing Power"};
        shouldCraftRecipe = {"1x Golden Sansam, 1x Dreaming Glory, 1x Imbued Vial"};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {"Mad Alchemist's Potion"};
        shouldCraftRecipe = {"2x Ragveil, 1x Crystal Vial"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {"Super Healing Potion"};
        shouldCraftRecipe = {"2x Netherbloom, 1x Felweed, 1x Imbued Vial"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
          "Super Mana Potion",
          "Mad Alchemist's Potion" -- turns grey at 350
        };
        shouldCraftRecipe = {
          "2x Dreaming Glory, 1x Felweed, 1x Imbued Vial", -- Super Mana Potion
          "2x Ragveil, 1x Crystal Vial" --------------------- Mad Alchemist's Potion
        };
    elseif rank > 349 and rank < 360 then -- 350-359
        shouldCraft = {
          "Resurgent Healing Potion",
          "Super Mana Potion"
        };
        shouldCraftRecipe = {
          "2x Goldclover, 1x Imbued Vial", ----------------- Resurgent Healing Potion
          "2x Dreaming Glory, 1x Felweed, 1x Imbued Vial" -- Super Mana Potion
        };
    elseif rank > 359 and rank < 365 then -- 360-364
        shouldCraft = {"Icy Mana Potion"};
        shouldCraftRecipe = {"2x Talandra's Rose, 1x Imbued Vial"};
    elseif rank > 364 and rank < 375 then -- 365-374
        shouldCraft = {"Spellpower Elixir"};
        shouldCraftRecipe = {"1x Goldclover, 1x Tiger Lily, 1x Imbued Vial"};
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {"Pygmy Oil"};
        shouldCraftRecipe = {"1x Pygmy Suckerfish"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {
          "Potion of Nightmares",
          "Pygmy Oil"
        };
        shouldCraftRecipe = {
          "1x Goldclover, 2x Talandra's Rose, 1x Imbued Vial", -- Potion of Nightmares
          "1x Pygmy Suckerfish" --------------------------------- Pygmy Oil
        };
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {"Elixir of Mighty Strength"};
        shouldCraftRecipe = {"2x Tiger Lily, 1x Imbued Vial"};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {"Elixir of Mighty Agility"};
        shouldCraftRecipe = {"2x Goldcover, 2x Adder's Tongue, 1x Imbued Vial"};
    elseif rank > 399 and rank < 415 then -- 400-414
        shouldCraft = {
            "Indestructible Potion",
            "Potion of Speed",
            "Elixir of Water Walking",
            "Elixir of Armor Piercing",
            "Crazy Alchemist's Potion",
        };
        shouldCraftRecipe = {
            "2x Icethorn, 1x Imbued Vial", ---------------------- Indestructible Potion
            "2x Adder's Tongue, 1x Pygmy Oil, 1x Imbued Vial", -- Potion of Speed
            "3x Ethereal Oil, 1x Imbued Vial", ------------------ Elixir of Water Walking
            "2x Tiger Lily 1x Imbued Vial", --------------------- Elixir of Armor Piercing
            "2x Goldclover, 1x Imbued Vial", -------------------- Crazy Alchemist's Potion
        };
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {"Runic Mana Potion"};
        shouldCraftRecipe = {"1x Goldcover, 2x Lichbloom, 1x Imbued Vial"};
    elseif rank > 424 and rank < 430 then -- 425-429
        shouldCraft = {"Transmute: Titanium"};
        shouldCraftRecipe = {"8x Saronite Bar"};
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {"Transmute: Earthsiege Diamond"};
        shouldCraftRecipe = {"1x Dark Jade, 1x Huge Citrine, 1x Eternal Fire"};
    elseif rank > 434 and rank < 440 then -- 435-439
        shouldCraft = {
            "Transmute: Skyflare Diamond",
            "Flask of Endless Rage",
            "Flask of Pure Mojo",
            "Flask of Stoneblood",
            "Flask of the Frost Wyrm"
        };
        shouldCraftRecipe = {
            "1x Bloodstone, 1x Chalcedony, 1x Eternal Air", --------------------------- Transmute: Skyflare Diamond
            "7x Lich Bloom, 3x GoldClover, 1x Frost Lotus, 1x Enchanted Vial", -------- Flask of Endless Rage
            "7x Icethorn, 3x Pygmy Oil, 1x Frost Lotus, 1x Enchanted Vial", ----------- Flask of Pure Mojo
            "7x Lichbloom, 3x Crystallized Life, 1x Frost Lotus, 1x Enchanted Vial", -- Flask of Stoneblood
            "5x Icethorn, 5x Lichbloom, 1x Frost Lotus, 1x Enchanted Vial" ------------ Flask of the Frost Wyrm
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            "Flask of Endless Rage",
            "Flask of Pure Mojo",
            "Flask of Stoneblood",
            "Flask of the Frost Wyrm",
            "Transmute: Skyflare Diamond"
        };
        shouldCraftRecipe = {
            "7x Lich Bloom, 3x GoldClover, 1x Frost Lotus, 1x Enchanted Vial", -------- Flask of Endless Rage
            "7x Icethorn, 3x Pygmy Oil, 1x Frost Lotus, 1x Enchanted Vial", ----------- Flask of Pure Mojo
            "7x Lichbloom, 3x Crystallized Life, 1x Frost Lotus, 1x Enchanted Vial", -- Flask of Stoneblood
            "5x Icethorn, 5x Lichbloom, 1x Frost Lotus, 1x Enchanted Vial",------------ Flask of the Frost Wyrm
            "1x Bloodstone, 1x Chalcedony, 1x Eternal Air" ---------------------------- Transmute: Skyflare Diamond
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Alchemy module|r");
