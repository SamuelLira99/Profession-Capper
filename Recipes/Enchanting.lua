local addonName, addonTable = ...;

local reagents = addonTable.recipes.reagents;

addonTable.recipes.enchanting = {


    -- Runed rods

    runedCopperRod = {
        spellName = "Runed Copper Rod",
        spellId = "7421",
        producedItemId = reagents.runedCopperRod.id,
        turnsYellowAtSkillLevel = 5,
        turnsGreenAtSkillLevel = 7,
        turnsGreyAtSkillLevel = 10,
        reagents = {
            {
                name = reagents.copperRod.name,
                id = reagents.copperRod.id,
                amount = 1
            },
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 1
            },
            {
                name = reagents.lesserMagicEssence.name,
                id = reagents.lesserMagicEssence.id,
                amount = 1
            }
        }
    },

    runedSilverRod = {
        spellName = "Runed Silver Rod",
        spellId = "7795",
        producedItemId = reagents.runedSilverRod.id,
        turnsYellowAtSkillLevel = 130,
        turnsGreenAtSkillLevel = 150,
        turnsGreyAtSkillLevel = 170,
        reagents = {
            {
                name = reagents.silverRod.name,
                id = reagents.silverRod.id,
                amount = 1
            },
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 6
            },
            {
                name = reagents.greaterMagicEssence.name,
                id = reagents.greaterMagicEssence.id,
                amount = 3
            },
            {
                name = reagents.runedCopperRod.name,
                id = reagents.runedCopperRod.id,
                amount = 1
            }
        }
    },

    runedGoldenRod = {
        spellName = "Runed Golden Rod",
        spellId = "13628",
        producedItemId = reagents.runedGoldenRod.id,
        turnsYellowAtSkillLevel = 175,
        turnsGreenAtSkillLevel = 195,
        turnsGreyAtSkillLevel = 215,
        reagents = {
            {
                name = reagents.goldenRod.name,
                id = reagents.goldenRod.id,
                amount = 1
            },
            {
                name = reagents.iridescentPearl.name,
                id = reagents.iridescentPearl.id,
                amount = 1
            },
            {
                name = reagents.greaterAstralEssence.name,
                id = reagents.greaterAstralEssence.id,
                amount = 2
            },
            {
                name = reagents.soulDust.name,
                id = reagents.soulDust.id,
                amount = 2
            },
            {
                name = reagents.runedSilverRod.name,
                id = reagents.runedSilverRod.id,
                amount = 1
            }
        }
    },

    runedTruesilverRod = {
        spellName = "Runed Truesilver Rod",
        spellId = "13702",
        producedItemId = reagents.runedTruesilverRod.id,
        turnsYellowAtSkillLevel = 220,
        turnsGreenAtSkillLevel = 240,
        turnsGreyAtSkillLevel = 260,
        reagents = {
            {
                name = reagents.truesilverRod.name,
                id = reagents.truesilverRod.id,
                amount = 1
            },
            {
                name = reagents.blackPearl.name,
                id = reagents.blackPearl.id,
                amount = 1
            },
            {
                name = reagents.greaterMysticEssence.name,
                id = reagents.greaterMysticEssence.id,
                amount = 2
            },
            {
                name = reagents.visionDust.name,
                id = reagents.visionDust.id,
                amount = 2
            },
            {
                name = reagents.runedGoldenRod.name,
                id = reagents.runedGoldenRod.id,
                amount = 1
            }
        }
    },

    runedArcaniteRod = {
        spellName = reagents.runedArcaniteRod.name,
        spellId = "20051",
        producedItemId = reagents.runedArcaniteRod.id,
        turnsYellowAtSkillLevel = 305,
        turnsGreenAtSkillLevel = 322,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.arcaniteRod.name,
                id = reagents.arcaniteRod.id,
                amount = 1
            },
            {
                name = reagents.goldenPearl.name,
                id = reagents.goldenPearl.id,
                amount = 1
            },
            {
                name = reagents.illusionDust.name,
                id = reagents.illusionDust.id,
                amount = 10
            },
            {
                name = reagents.greaterEternalEssence.name,
                id = reagents.greaterEternalEssence.id,
                amount = 4
            },
            {
                name = reagents.runedTruesilverRod.name,
                id = reagents.runedTruesilverRod.id,
                amount = 1
            },
            {
                name = reagents.largeBrilliantShard.name,
                id = reagents.largeBrilliantShard.id,
                amount = 2
            }
        }
    },

    runedFelIronRod = {
        spellName = reagents.runedFelIronRod.name,
        spellId = "32664",
        producedItemId = reagents.runedFelIronRod.id,
        turnsYellowAtSkillLevel = 310,
        turnsGreenAtSkillLevel = 325,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.felIronRod.name,
                id = reagents.felIronRod.id,
                amount = 1
            },
            {
                name = reagents.greaterEternalEssence.name,
                id = reagents.greaterEternalEssence.id,
                amount = 4
            },
            {
                name = reagents.largeBrilliantShard.name,
                id = reagents.largeBrilliantShard.id,
                amount = 6
            },
            {
                name = reagents.runedArcaniteRod.name,
                id = reagents.runedArcaniteRod.id,
                amount = 1
            }
        }
    },

    runedAdamantiteRod = {
        spellName = reagents.runedAdamantiteRod.name,
        spellId = "32665",
        producedItemId = reagents.runedAdamantiteRod.id,
        turnsYellowAtSkillLevel = 370,
        turnsGreenAtSkillLevel = 375,
        turnsGreyAtSkillLevel = 380,
        reagents = {
            {
                name = reagents.adamantiteRod.name,
                id = reagents.adamantiteRod.id,
                amount = 1
            },
            {
                name = reagents.greaterPlanarEssence.name,
                id = reagents.greaterPlanarEssence.id,
                amount = 8
            },
            {
                name = reagents.largePrismaticShard.name,
                id = reagents.largePrismaticShard.id,
                amount = 8
            },
            {
                name = reagents.primalMight.name,
                id = reagents.primalMight.id,
                amount = 1
            },
            {
                name = reagents.runedFelIronRod.name,
                id = reagents.runedFelIronRod.id,
                amount = 1
            }
        }
    },

    runedEterniumRod = {
        spellName = reagents.runedEterniumRod.name,
        spellId = "32667",
        producedItemId = reagents.runedEterniumRod.id,
        turnsYellowAtSkillLevel = 375, -- verify in-game due not to having yellow skill level on wotlkdb.com
        turnsGreenAtSkillLevel = 377,
        turnsGreyAtSkillLevel = 385,
        reagents = {
            {
                name = reagents.eterniumRod.name,
                id = reagents.eterniumRod.id,
                amount = 1
            },
            {
                name = reagents.greaterPlanarEssence.name,
                id = reagents.greaterPlanarEssence.id,
                amount = 6
            },
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 6
            },
            {
                name = reagents.runedAdamantiteRod.name,
                id = reagents.runedAdamantiteRod.id,
                amount = 1
            }
        }
    },

    runedTitaniumRod = {
        spellName = reagents.runedTitaniumRod.name,
        spellId = "60619",
        producedItemId = reagents.runedTitaniumRod.id,
        turnsYellowAtSkillLevel = 435,
        turnsGreenAtSkillLevel = 445,
        turnsGreyAtSkillLevel = 455,
        reagents = {
            {
                name = reagents.titaniumRod.name,
                id = reagents.titaniumRod.id,
                amount = 1
            },
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 40
            },
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 12
            },
            {
                name = reagents.dreamShard.name,
                id = reagents.dreamShard.id,
                amount = 8
            },
            {
                name = reagents.runedEterniumRod.name,
                id = reagents.runedEterniumRod.id,
                amount = 1
            }
        }
    },


    -- Boots

    enchantBootsMinorStamina = {
        spellName = "Enchant Boots - Minor Stamina",
        spellId = "7863",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 150,
        turnsGreenAtSkillLevel = 170,
        turnsGreyAtSkillLevel = 190,
        reagents = {
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 8
            }
        }
    },

    enchantBootsLesserAccuracy = {
        spellName = "Enchant Boots - Lesser Accuracy",
        spellId = "63746",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 245,
        turnsGreenAtSkillLevel = 265,
        turnsGreyAtSkillLevel = 285,
        reagents = {
            {
                name = reagents.visionDust.name,
                id = reagents.visionDust.id,
                amount = 4
            },
            {
                name = reagents.lesserNetherEssence.name,
                id = reagents.lesserNetherEssence.id,
                amount = 1
            }
        }
    },

    enchantBootsLesserStamina = {
        spellName = "Enchant Boots - Lesser Stamina",
        spellId = "13644",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 190,
        turnsGreenAtSkillLevel = 210,
        turnsGreyAtSkillLevel = 230,
        reagents = {
            {
                name = reagents.soulDust.name,
                id = reagents.soulDust.id,
                amount = 4
            }
        }
    },

    enchantBootsIcewalker = {
        spellName = "Enchant Boots - Icewalker",
        spellId = "60623",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 395,
        turnsGreenAtSkillLevel = 405,
        turnsGreyAtSkillLevel = 415,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 8
            },
            {
                name = reagents.crystallizedWater.name,
                id = reagents.crystallizedWater.id,
                amount = 1
            }
        }
    },

enchantBootsGreaterAssault = {
        spellName = "Enchant Boots - Greater Assault",
        spellId = "60763",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 450,
        turnsGreenAtSkillLevel = 460,
        turnsGreyAtSkillLevel = 470,
        reagents = {
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 4
            },
            {
                name = reagents.dreamShard.name,
                id = reagents.dreamShard.id,
                amount = 4
            }
        }
    },

    enchantBootsGreaterSpirit = {
        spellName = "Enchant Boots - Greater Spirit",
        spellId = "44508",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 420,
        turnsGreenAtSkillLevel = 430,
        turnsGreyAtSkillLevel = 440,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 10
            },
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 1
            }
        }
    },

    enchantBootsGreaterStamina = {
        spellName = "Enchant Boots - Greater Stamina",
        spellId = "20020",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 280,
        turnsGreenAtSkillLevel = 300,
        turnsGreyAtSkillLevel = 320,
        reagents = {
            {
                name = reagents.dreamDust.name,
                id = reagents.dreamDust.id,
                amount = 5
            }
        }
    },


    -- Bracer

    enchantBracerMinorHealth = {
        spellName = "Enchant Bracer - Minor Health",
        spellId = "7418",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 70,
        turnsGreenAtSkillLevel = 90,
        turnsGreyAtSkillLevel = 110,
        reagents = {
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 1
            }
        }
    },

    enchantBracerMinorStamina = {
        spellName = "Enchant Bracer - Minor Stamina",
        spellId = "7457",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 100,
        turnsGreenAtSkillLevel = 120,
        turnsGreyAtSkillLevel = 140,
        reagents = {
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 3
            }
        }
    },

    enchantBracerMinorSpirit = {
        spellName = "Enchant Bracer - Minor Spirit",
        spellId = "7766",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 105,
        turnsGreenAtSkillLevel = 125,
        turnsGreyAtSkillLevel = 145,
        reagents = {
            {
                name = reagents.lesserMagicEssence.name,
                id = reagents.lesserMagicEssence.id,
                amount = 2
            }
        }
    },

    enchantBracerMinorStrength = {
        spellName = "Enchant Bracer - Minor Strength",
        spellId = "7782",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 115,
        turnsGreenAtSkillLevel = 135,
        turnsGreyAtSkillLevel = 155,
        reagents = {
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 5
            }
        }
    },

    enchantBracerLesserStamina = {
        spellName = "Enchant Bracer - Lesser Stamina",
        spellId = "13501",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 155,
        turnsGreenAtSkillLevel = 175,
        turnsGreyAtSkillLevel = 195,
        reagents = {
            {
                name = reagents.soulDust.name,
                id = reagents.soulDust.id,
                amount = 2
            }
        }
    },

    enchantBracerLesserStrength = {
        spellName = "Enchant Bracer - Lesser Strength",
        spellId = "13536",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 165,
        turnsGreenAtSkillLevel = 185,
        turnsGreyAtSkillLevel = 205,
        reagents = {
            {
                name = reagents.soulDust.name,
                id = reagents.soulDust.id,
                amount = 2
            }
        }
    },

    enchantBracerSpirit = {
        spellName = "Enchant Bracer - Spirit",
        spellId = "13642",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 185,
        turnsGreenAtSkillLevel = 205,
        turnsGreyAtSkillLevel = 225,
        reagents = {
            {
                name = reagents.lesserMysticEssence.name,
                id = reagents.lesserMysticEssence.id,
                amount = 1
            }
        }
    },

    enchantBracerStrength = {
        spellName = "Enchant Bracer - Strength",
        spellId = "13661",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 200,
        turnsGreenAtSkillLevel = 220,
        turnsGreyAtSkillLevel = 240,
        reagents = {
            {
                name = reagents.visionDust.name,
                id = reagents.visionDust.id,
                amount = 1
            }
        }
    },

    enchantBracersStriking = {
        spellName = "Enchant Bracers - Striking",
        spellId = "60616",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 370,
        turnsGreenAtSkillLevel = 380,
        turnsGreyAtSkillLevel = 390,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 6
            }
        }
    },

    enchantBracerAssault = {
        spellName = "Enchant Bracer - Assault",
        spellId = "34002",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 310,
        turnsGreenAtSkillLevel = 325,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 6
            }
        }
    },

    enchantBracerBrawn = {
        spellName = "Enchant Bracer - Brawn",
        spellId = "27899",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 315,
        turnsGreenAtSkillLevel = 330,
        turnsGreyAtSkillLevel = 345,
        reagents = {
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 6
            }
        }
    },

    enchantBracerGreaterStamina = {
        spellName = "Enchant Bracer - Greater Stamina",
        spellId = "13945",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 265,
        turnsGreenAtSkillLevel = 285,
        turnsGreyAtSkillLevel = 305,
        reagents = {
            {
                name = reagents.dreamDust.name,
                id = reagents.dreamDust.id,
                amount = 5
            }
        }
    },

    enchantBracerGreaterStrength = {
        spellName = "Enchant Bracer - Greater Strength",
        spellId = "13939",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 260,
        turnsGreenAtSkillLevel = 280,
        turnsGreyAtSkillLevel = 300,
        reagents = {
            {
                name = reagents.dreamDust.name,
                id = reagents.dreamDust.id,
                amount = 2
            },
            {
                name = reagents.greaterNetherEssence.name,
                id = reagents.greaterNetherEssence.id,
                amount = 1
            }
        }
    },

    enchantBracerGreaterIntellect = {
        spellName = "Enchant Bracer - Greater Intellect",
        spellId = "20008",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 275,
        turnsGreenAtSkillLevel = 295,
        turnsGreyAtSkillLevel = 315,
        reagents = {
            {
                name = reagents.lesserEternalEssence.name,
                id = reagents.lesserEternalEssence.id,
                amount = 3
            }
        }
    },

    enchantBracersExceptionalIntellect = {
        spellName = "Enchant Bracers - Exceptional Intellect",
        spellId = "44555",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 385,
        turnsGreenAtSkillLevel = 392,
        turnsGreyAtSkillLevel = 400,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 10
            }
        }
    },


    -- Chest

    enchantChestMinorHealth = {
        spellName = "Enchant Chest - Minor Health",
        spellId = "7420",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 70,
        turnsGreenAtSkillLevel = 90,
        turnsGreyAtSkillLevel = 110,
        reagents = {
            {
                name = reagents.strangeDust.name,
                id = reagents.strangeDust.id,
                amount = 1
            }
        }
    },

    enchantChestMinorMana = {
        spellName = "Enchant Chest - Minor Mana",
        spellId = "7443",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 80,
        turnsGreenAtSkillLevel = 100,
        turnsGreyAtSkillLevel = 120,
        reagents = {
            {
                name = reagents.lesserMagicEssence.name,
                id = reagents.lesserMagicEssence.id,
                amount = 1
            }
        }
    },

    enchantChestGreaterHealth = {
        spellName = "Enchant Chest - Greater Health",
        spellId = "13640",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 180,
        turnsGreenAtSkillLevel = 200,
        turnsGreyAtSkillLevel = 220,
        reagents = {
            {
                name = reagents.soulDust.name,
                id = reagents.soulDust.id,
                amount = 3
            }
        }
    },

    enchantChestSuperiorHealth = {
        spellName = "Enchant Chest - Superior Health",
        spellId = "13858",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 240,
        turnsGreenAtSkillLevel = 260,
        turnsGreyAtSkillLevel = 280,
        reagents = {
            {
                name = reagents.visionDust.name,
                id = reagents.visionDust.id,
                amount = 6
            }
        }
    },

    enchantChestGreaterManaRestoration = {
        spellName = "Enchant Chest - Greater Mana Restoration",
        spellId = "44509",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 430,
        turnsGreenAtSkillLevel = 440,
        turnsGreyAtSkillLevel = 450,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 4
            },
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 4
            }
        }
    },

    enchantChestMajorMana = {
        spellName = "Enchant Chest - Major Mana",
        spellId = "20028",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 305,
        turnsGreenAtSkillLevel = 322,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.illusionDust.name,
                id = reagents.illusionDust.id,
                amount = 8
            }
        }
    },

    enchantChestExceptionalMana = {
        spellName = "Enchant Chest - Exceptional Mana",
        spellId = "27958",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 360,
        turnsGreenAtSkillLevel = 370,
        turnsGreyAtSkillLevel = 380,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 6
            }
        }
    },

    enchantChestMightyHealth = {
        spellName = "Enchant Chest - Mighty Health",
        spellId = "44492",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 405,
        turnsGreenAtSkillLevel = 415,
        turnsGreyAtSkillLevel = 425,
        reagents = {
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 3
            }
        }
    },


    -- Cloak

    enchantCloakMinorAgility = {
        spellName = "Enchant Cloak - Minor Agility",
        spellId = "13419",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 135,
        turnsGreenAtSkillLevel = 155,
        turnsGreyAtSkillLevel = 175,
        reagents = {
            {
                name = reagents.lesserAstralEssence.name,
                id = reagents.lesserAstralEssence.id,
                amount = 1
            }
        }
    },

    enchantCloakLesserAgility = {
        spellName = "Enchant Cloak - Lesser Agility",
        spellId = "13882",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 245,
        turnsGreenAtSkillLevel = 265,
        turnsGreyAtSkillLevel = 285,
        reagents = {
            {
                name = reagents.lesserNetherEssence.name,
                id = reagents.lesserNetherEssence.id,
                amount = 2
            }
        }
    },

    enchantCloakResistance = {
        spellName = "Enchant Cloak - Resistance",
        spellId = "13794",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 225,
        turnsGreenAtSkillLevel = 245,
        turnsGreyAtSkillLevel = 265,
        reagents = {
            {
                name = reagents.lesserNetherEssence.name,
                id = reagents.lesserNetherEssence.id,
                amount = 1
            }
        }
    },

    enchantCloakSpeed = {
        spellName = "Enchant Cloak - Speed",
        spellId = "60609",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 360,
        turnsGreenAtSkillLevel = 370,
        turnsGreyAtSkillLevel = 380,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 6
            }
        }
    },

    enchantCloakGreaterDefense = {
        spellName = "Enchant Cloak - Greater Defense",
        spellId = "13746",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 255,
        turnsGreenAtSkillLevel = 245,
        turnsGreyAtSkillLevel = 265,
        reagents = {
            {
                name = reagents.visionDust.name,
                id = reagents.visionDust.id,
                amount = 3
            }
        }
    },

    enchantCloakGreaterSpeed = {
        spellName = "Enchant Cloak - Greater Speed",
        spellId = "47898",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 440,
        turnsGreenAtSkillLevel = 450,
        turnsGreyAtSkillLevel = 460,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 16
            },
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 4
            }
        }
    },

    enchantCloakSuperiorAgility = {
        spellName = "Enchant Cloak - Superior Agility",
        spellId = "44500",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 405,
        turnsGreenAtSkillLevel = 415,
        turnsGreyAtSkillLevel = 425,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 9
            }
        }
    },

    enchantCloakMajorArmor = {
        spellName = "Enchant Cloak - Major Armor",
        spellId = "27961",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 320,
        turnsGreenAtSkillLevel = 335,
        turnsGreyAtSkillLevel = 350,
        reagents = {
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 8
            }
        }
    },

    enchantCloakMightyArmor = {
        spellName = "Enchant Cloak - Mighty Armor",
        spellId = "47672",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 440,
        turnsGreenAtSkillLevel = 450,
        turnsGreyAtSkillLevel = 460,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 15
            },
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 2
            }
        }
    },


    -- Gloves

    enchantGlovesAssault = {
        spellName = "Enchant Gloves - Assault",
        spellId = "33996",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 320,
        turnsGreenAtSkillLevel = 335,
        turnsGreyAtSkillLevel = 350,
        reagents = {
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 8
            }
        }
    },

    enchantGlovesExpertise = {
        spellName = "Enchant Gloves - Expertise",
        spellId = "44484",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 415,
        turnsGreenAtSkillLevel = 425,
        turnsGreyAtSkillLevel = 435,
        reagents = {
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 12
            }
        }
    },

    enchantGlovesPrecision = {
        spellName = "Enchant Gloves - Precision",
        spellId = "44488",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 420,
        turnsGreenAtSkillLevel = 430,
        turnsGreyAtSkillLevel = 440,
        reagents = {
            {
                name = reagents.greaterCosmicEssence.name,
                id = reagents.greaterCosmicEssence.id,
                amount = 4
            }
        }
    },


    -- Shield

    enchantShieldResilience = {
        spellName = "Enchant Shield - Resilience",
        spellId = "44383",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 340,
        turnsGreenAtSkillLevel = 355,
        turnsGreyAtSkillLevel = 370,
        reagents = {
            {
                name = reagents.largePrismaticShard.name,
                id = reagents.largePrismaticShard.id,
                amount = 1
            },
            {
                name = reagents.lesserPlanarEssence.name,
                id = reagents.lesserPlanarEssence.id,
                amount = 4
            }
        }
    },

    enchantShieldGreaterStamina = {
        spellName = "Enchant Shield - Greater Stamina",
        spellId = "20017",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 285,
        turnsGreenAtSkillLevel = 305,
        turnsGreyAtSkillLevel = 325,
        reagents = {
            {
                name = reagents.dreamDust.name,
                id = reagents.dreamDust.id,
                amount = 5
            }
        }
    },

    enchantShieldMajorStamina = {
        spellName = "Enchant Shield - Major Stamina",
        spellId = "34009",
        producedItemId = "isSpell",
        turnsYellowAtSkillLevel = 335,
        turnsGreenAtSkillLevel = 350,
        turnsGreyAtSkillLevel = 365,
        reagents = {
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 15
            }
        }
    },


    -- Oils

    lesserManaOil = {
        spellName = "Lesser Mana Oil",
        spellId = "25127",
        producedItemId = "20747",
        turnsYellowAtSkillLevel = 260,
        turnsGreenAtSkillLevel = 270,
        turnsGreyAtSkillLevel = 280,
        reagents = {
            {
                name = reagents.dreamDust.name,
                id = reagents.dreamDust.id,
                amount = 3
            },
            {
                name = reagents.purpleLotus.name,
                id = reagents.purpleLotus.id,
                amount = 2
            },
            {
                name = reagents.crystalVial.name,
                id = reagents.crystalVial.id,
                amount = 1
            }
        }
    },

    superiorWizardOil = {
        spellName = "Superior Wizard Oil",
        spellId = "28019",
        producedItemId = "22522",
        turnsYellowAtSkillLevel = 340,
        turnsGreenAtSkillLevel = 350,
        turnsGreyAtSkillLevel = 360,
        reagents = {
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 3
            },
            {
                name = reagents.nightmareVine.name,
                id = reagents.nightmareVine.id,
                amount = 1
            },
            {
                name = reagents.imbuedVial.name,
                id = reagents.imbuedVial.id,
                amount = 1
            }
        }
    }

}
