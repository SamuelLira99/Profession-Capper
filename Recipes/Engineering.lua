local addonName, addonTable = ...;

local reagents = addonTable.recipes.reagents;

addonTable.recipes.engineering = {

    -- Powders

    roughBlastingPowder = {
        spellName = reagents.roughBlastingPowder.name,
        spellId = "3918",
        producedItemId = reagents.roughBlastingPowder.id,
        turnsYellowAtSkillLevel = 20,
        turnsGreenAtSkillLevel = 30,
        turnsGreyAtSkillLevel = 40,
        reagents = {
            {
                name = reagents.roughStone.name,
                id = reagents.roughStone.id,
                amount = 1
            }
        }
    },

    coarseBlastingPowder = {
        spellName = reagents.coarseBlastingPowder.name,
        spellId = "3929",
        producedItemId = reagents.coarseBlastingPowder.id,
        turnsYellowAtSkillLevel = 85,
        turnsGreenAtSkillLevel = 90,
        turnsGreyAtSkillLevel = 95,
        reagents = {
            {
                name = reagents.coarseStone.name,
                id = reagents.coarseStone.id,
                amount = 1
            }
        }
    },

    heavyBlastingPowder = {
        spellName = reagents.heavyBlastingPowder.name,
        spellId = "3945",
        producedItemId = reagents.heavyBlastingPowder,
        turnsYellowAtSkillLevel = 125,
        turnsGreenAtSkillLevel = 135,
        turnsGreyAtSkillLevel = 145,
        reagents = {
            {
                name = reagents.heavyStone.name,
                id = reagents.heavyStone.id,
                amount = 1
            }
        }
    },

    solidBlastingPowder = {
        spellName = reagents.solidBlastingPowder.name,
        spellId = "12585",
        producedItemId = reagents.solidBlastingPowder.id,
        turnsYellowAtSkillLevel = 175,
        turnsGreenAtSkillLevel = 185,
        turnsGreyAtSkillLevel = 195,
        reagents = {
            {
                name = reagents.solidStone.name,
                id = reagents.solidStone.id,
                amount = 2
            }
        }
    },

    denseBlastingPowder = {
        spellName = reagents.denseBlastingPowder.name,
        spellId = "19788",
        producedItemId = reagents.denseBlastingPowder.id,
        turnsYellowAtSkillLevel = 250,
        turnsGreenAtSkillLevel = 255,
        turnsGreyAtSkillLevel = 260,
        reagents = {
            {
                name = reagents.denseStone.name,
                id = reagents.denseStone.id,
                amount = 2
            }
        }
    },

    elementalBlastingPowder = {
        spellName = reagents.elementalBlastingPowder.name,
        spellId = "30303",
        producedItemId = reagents.elementalBlastingPowder.id,
        producedAmount = "4",
        turnsYellowAtSkillLevel = 300,
        turnsGreenAtSkillLevel = 310,
        turnsGreyAtSkillLevel = 320,
        reagents = {
            {
                name = reagents.moteOfFire.name,
                id = reagents.moteOfFire.id,
                amount = 1
            },
            {
                name = reagents.moteOfEarth.name,
                id = reagents.moteOfEarth.id,
                amount = 2
            }
        }
    },


    -- Explosives

    roughDynamite = {
        spellName = "Rough Dynamite",
        spellId = "3919",
        producedItemId = "4358",
        producedAmount = "2",
        turnsYellowAtSkillLevel = 30,
        turnsGreenAtSkillLevel = 45,
        turnsGreyAtSkillLevel = 60,
        reagents = {
            {
                name = reagents.roughBlastingPowder.name,
                id = reagents.roughBlastingPowder.id,
                amount = 2
            },
            {
                name = reagents.linenCloth.name,
                id = reagents.linenCloth.id,
                amount = 1
            }
        }
    },

    coarseDynamite = {
        spellName = "Coarse Dynamite",
        spellId = "3931",
        producedItemId = "4365",
        producedAmount = "1-3",
        turnsYellowAtSkillLevel = 90,
        turnsGreenAtSkillLevel = 97,
        turnsGreyAtSkillLevel = 105,
        reagents = {
            {
                name = reagents.coarseBlastingPowder.name,
                id = reagents.coarseBlastingPowder.id,
                amount = 3
            },
            {
                name = reagents.linenCloth.name,
                id = reagents.linenCloth.id,
                amount = 1
            }
        }
    },

    largeCopperBomb = {
        spellName = "Large Copper Bomb",
        spellId = "3937",
        producedItemId = "4370",
        producedAmount = "1-4",
        turnsYellowAtSkillLevel = 105,
        turnsGreenAtSkillLevel = 130,
        turnsGreyAtSkillLevel = 155,
        reagents = {
            {
                name = reagents.copperBar.name,
                id = reagents.copperBar.id,
                amount = 3
            },
            {
                name = reagents.coarseBlastingPowder.name,
                id = reagents.coarseBlastingPowder.id,
                amount = 4
            },
            {
                name = reagents.silverContact.name,
                id = reagents.silverContact.id,
                amount = 1
            }
        }
    },

    explosiveSheep = {
        spellName = "Explosive Sheep",
        spellId = "3955",
        producedItemId = "4384",
        turnsYellowAtSkillLevel = 175,
        turnsGreenAtSkillLevel = 187,
        turnsGreyAtSkillLevel = 200,
        reagents = {
            {
                name = reagents.bronzeFramework.name,
                id = reagents.bronzeFramework.id,
                amount = 1
            },
            {
                name = reagents.whirringBronzeGizmo.name,
                id = reagents.whirringBronzeGizmo.id,
                amount = 1
            },
            {
                name = reagents.heavyBlastingPowder.name,
                id = reagents.heavyBlastingPowder.id,
                amount = 2
            },
            {
                name = reagents.woolCloth.name,
                id = reagents.woolCloth.id,
                amount = 2
            }
        }
    },

    hiExplosiveBomb = {
        spellName = "Hi-Explosive Bomb",
        spellId = "12619",
        producedItemId = "10562",
        producedAmount = "4",
        turnsYellowAtSkillLevel = 235,
        turnsGreenAtSkillLevel = 255,
        turnsGreyAtSkillLevel = 275,
        reagents = {
            {
                name = reagents.mithrilCasing.name,
                id = reagents.mithrilCasing.id,
                amount = 2
            },
            {
                name = reagents.unstableTrigger.name,
                id = reagents.unstableTrigger.id,
                amount = 1
            },
            {
                name = reagents.solidBlastingPowder.name,
                id = reagents.solidBlastingPowder.id,
                amount = 2
            }
        }
    },

    felIronBomb = {
        spellName = "Fel Iron Bomb",
        spellId = "30310",
        producedItemId = "23736",
        producedAmount = "4",
        turnsYellowAtSkillLevel = 320,
        turnsGreenAtSkillLevel = 330,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.felIronCasing.name,
                id = reagents.felIronCasing.id,
                amount = 1
            },
            {
                name = reagents.handfulOfFelIronBolts.name,
                id = reagents.handfulOfFelIronBolts.id,
                amount = 2
            },
            {
                name = reagents.elementalBlastingPowder.name,
                id = reagents.elementalBlastingPowder.id,
                amount = 1
            }
        }
    },

    adamantiteGrenade = {
        spellName = "Adamantite Grenade",
        spellId = "30311",
        producedItemId = "23737",
        producedAmount = "3",
        turnsYellowAtSkillLevel = 335,
        turnsGreenAtSkillLevel = 345,
        turnsGreyAtSkillLevel = 355,
        reagents = {
            {
                name = reagents.adamantiteBar.name,
                id = reagents.adamantiteBar.id,
                amount = 4
            },
            {
                name = reagents.handfulOfFelIronBolts.name,
                id = reagents.handfulOfFelIronBolts.id,
                amount = 2
            },
            {
                name = reagents.elementalBlastingPowder.name,
                id = reagents.elementalBlastingPowder.id,
                amount = 1
            }
        }
    },

    explosiveDecoy = {
        spellName = "Explosive Decoy",
        spellId = "56463",
        producedItemId = "40536",
        producedAmount = "5",
        turnsYellowAtSkillLevel = 385,
        turnsGreenAtSkillLevel = 390,
        turnsGreyAtSkillLevel = 395,
        reagents = {
            {
                name = reagents.frostweaveCloth.name,
                id = reagents.frostweaveCloth.id,
                amount = 1
            },
            {
                name = reagents.volatileBlastingTrigger.name,
                id = reagents.volatileBlastingTrigger.id,
                amount = 3
            }
        }
    },


    -- Parts

    handfulOfCopperBolts = {
        spellName = reagents.handfulOfCopperBolts.name,
        spellId = "3922",
        producedItemId = reagents.handfulOfCopperBolts.id,
        turnsYellowAtSkillLevel = 45,
        turnsGreenAtSkillLevel = 52,
        turnsGreyAtSkillLevel = 60,
        reagents = {
            {
                name = reagents.copperBar.name,
                id = reagents.copperBar.id,
                amount = 1
            }
        }
    },

    copperTube = {
        spellName = reagents.copperTube.name,
        spellId = "3924",
        producedItemId = reagents.copperTube.id,
        turnsYellowAtSkillLevel = 80,
        turnsGreenAtSkillLevel = 95,
        turnsGreyAtSkillLevel = 110,
        reagents = {
            {
                name = reagents.copperBar.name,
                id = reagents.copperBar.id,
                amount = 2
            },
            {
                name = reagents.weakFlux.name,
                id = reagents.weakFlux.id,
                amount = 1
            }
        }
    },

    bronzeTube = {
        spellName = reagents.bronzeTube.name,
        spellId = "3938",
        producedItemId = reagents.bronzeTube.id,
        turnsYellowAtSkillLevel = 105,
        turnsGreenAtSkillLevel = 130,
        turnsGreyAtSkillLevel = 155,
        reagents = {
            {
                name = reagents.bronzeBar.name,
                id = reagents.bronzeBar.id,
                amount = 2
            },
            {
                name = reagents.weakFlux.name,
                id = reagents.weakFlux.id,
                amount = 1
            }
        }
    },

    silverContact = {
        spellName = reagents.silverContact.name,
        spellId = "3973",
        producedItemId = reagents.silverContact.id,
        producedAmount = "5",
        turnsYellowAtSkillLevel = 110,
        turnsGreenAtSkillLevel = 125,
        turnsGreyAtSkillLevel = 140,
        reagents = {
            {
                name = reagents.silverBar.name,
                id = reagents.silverBar.id,
                amount = 1
            }
        }
    },

    copperModulator = {
        spellName = reagents.copperModulator.name,
        spellId = "3926",
        producedItemId = reagents.copperModulator.id,
        turnsYellowAtSkillLevel = 95,
        turnsGreenAtSkillLevel = 110,
        turnsGreyAtSkillLevel = 125,
        reagents = {
            {
                name = reagents.handfulOfCopperBolts.name,
                id = reagents.handfulOfCopperBolts.id,
                amount = 2
            },
            {
                name = reagents.copperBar.name,
                id = reagents.copperBar.id,
                amount = 1
            },
            {
                name = reagents.linenCloth.name,
                id = reagents.linenCloth.id,
                amount = 2
            }
        }
    },

    whirringBronzeGizmo = {
        spellName = reagents.whirringBronzeGizmo.name,
        spellId = "3942",
        producedItemId = reagents.whirringBronzeGizmo.id,
        turnsYellowAtSkillLevel = 125,
        turnsGreenAtSkillLevel = 150,
        turnsGreyAtSkillLevel = 175,
        reagents = {
            {
                name = reagents.bronzeBar.name,
                id = reagents.bronzeBar.id,
                amount = 2
            },
            {
                name = reagents.woolCloth.name,
                id = reagents.woolCloth.id,
                amount = 1
            }
        }
    },

    bronzeFramework = {
        spellName = reagents.bronzeFramework.name,
        spellId = "3953",
        producedItemId = reagents.bronzeFramework.id,
        turnsYellowAtSkillLevel = 145,
        turnsGreenAtSkillLevel = 170,
        turnsGreyAtSkillLevel = 195,
        reagents = {
            {
                name = reagents.bronzeBar.name,
                id = reagents.bronzeBar.id,
                amount = 2
            },
            {
                name = reagents.mediumLeather.name,
                id = reagents.mediumLeather.id,
                amount = 1
            },
            {
                name = reagents.woolCloth.name,
                id = reagents.woolCloth.id,
                amount = 1
            }
        }
    },

    ironStrut = {
        spellName = reagents.ironStrut.name,
        spellId = "3958",
        producedItemId = reagents.ironStrut.id,
        turnsYellowAtSkillLevel = 160,
        turnsGreenAtSkillLevel = 170,
        turnsGreyAtSkillLevel = 180,
        reagents = {
            {
                name = reagents.ironBar.name,
                id = reagents.ironBar.id,
                amount = 2
            }
        }
    },

    goldPowerCore = {
        spellName = reagents.goldPowerCore.name,
        spellId = "12584",
        producedItemId = reagents.goldPowerCore.id,
        producedAmount = "3",
        turnsYellowAtSkillLevel = 150,
        turnsGreenAtSkillLevel = 170,
        turnsGreyAtSkillLevel = 190,
        reagents = {
            {
                name = reagents.goldBar.name,
                id = reagents.goldBar.id,
                amount = 1
            }
        }
    },

    mithrilTube = {
        spellName = reagents.mithrilTube.name,
        spellId = "12589",
        producedItemId = reagents.mithrilTube.id,
        turnsYellowAtSkillLevel = 195,
        turnsGreenAtSkillLevel = 215,
        turnsGreyAtSkillLevel = 235,
        reagents = {
            {
                name = reagents.mithrilBar.name,
                id = reagents.mithrilBar.id,
                amount = 3
            }
        }
    },

    unstableTrigger = {
        spellName = reagents.unstableTrigger.name,
        spellId = "12591",
        producedItemId = reagents.unstableTrigger.id,
        turnsYellowAtSkillLevel = 200,
        turnsGreenAtSkillLevel = 220,
        turnsGreyAtSkillLevel = 240,
        reagents = {
            {
                name = reagents.mithrilBar.name,
                id = reagents.mithrilBar.id,
                amount = 1
            },
            {
                name = reagents.mageweaveCloth.name,
                id = reagents.mageweaveCloth.id,
                amount = 1
            },
            {
                name = reagents.solidBlastingPowder.name,
                id = reagents.solidBlastingPowder.id,
                amount = 1
            }
        }
    },

    mithrilCasing = {
        spellName = reagents.mithrilCasing.name,
        spellId = "12599",
        producedItemId = reagents.mithrilCasing.id,
        turnsYellowAtSkillLevel = 215,
        turnsGreenAtSkillLevel = 235,
        turnsGreyAtSkillLevel = 255,
        reagents = {
            {
                name = reagents.mithrilBar.name,
                id = reagents.mithrilBar.id,
                amount = 3
            }
        }
    },

    thoriumWidget = {
        spellName = reagents.thoriumWidget.name,
        spellId = "19791",
        producedItemId = reagents.thoriumWidget.id,
        turnsYellowAtSkillLevel = 280,
        turnsGreenAtSkillLevel = 290,
        turnsGreyAtSkillLevel = 300,
        reagents = {
            {
                name = reagents.thoriumBar.name,
                id = reagents.thoriumBar.id,
                amount = 3
            },
            {
                name = reagents.runecloth.name,
                id = reagents.runecloth.id,
                amount = 1
            }
        }
    },

    thoriumTube = {
        spellName = reagents.thoriumTube.name,
        spellId = "19795",
        producedItemId = reagents.thoriumTube.id,
        turnsYellowAtSkillLevel = 295,
        turnsGreenAtSkillLevel = 305,
        turnsGreyAtSkillLevel = 315,
        reagents = {
            {
                name = reagents.thoriumBar.name,
                id = reagents.thoriumBar.id,
                amount = 6
            }
        }
    },

    handfulOfFelIronBolts = {
        spellName = reagents.handfulOfFelIronBolts.name,
        spellId = "30305",
        producedItemId = reagents.handfulOfFelIronBolts.id,
        turnsYellowAtSkillLevel = 300,
        turnsGreenAtSkillLevel = 305,
        turnsGreyAtSkillLevel = 310,
        reagents = {
            {
                name = reagents.felIronBar.name,
                id = reagents.felIronBar.id,
                amount = 1
            }
        }
    },

    felIronCasing = {
        spellName = reagents.felIronCasing.name,
        spellId = "30304",
        producedItemId = reagents.felIronCasing.id,
        turnsYellowAtSkillLevel = 300,
        turnsGreenAtSkillLevel = 310,
        turnsGreyAtSkillLevel = 320,
        reagents = {
            {
                name = reagents.felIronBar.name,
                id = reagents.felIronBar.id,
                amount = 3
            }
        }
    },

    felsteelStabilizer = {
        spellName = "Felsteel Stabilizer",
        spellId = "30309",
        producedItemId = "23787",
        turnsYellowAtSkillLevel = 350,
        turnsGreenAtSkillLevel = 360,
        turnsGreyAtSkillLevel = 370,
        reagents = {
            {
                name = reagents.felsteelBar.name,
                id = reagents.felsteelBar.id,
                amount = 2
            }
        }
    },

    handfulOfCobaltBolts = {
        spellName = reagents.handfulOfCobaltBolts.name,
        spellId = "56349",
        producedItemId = reagents.handfulOfCobaltBolts.id,
        producedAmount = "1-3",
        turnsYellowAtSkillLevel = 360,
        turnsGreenAtSkillLevel = 370,
        turnsGreyAtSkillLevel = 380,
        reagents = {
            {
                name = reagents.cobaltBar.name,
                id = reagents.cobaltBar.id,
                amount = 2
            }
        }
    },

    volatileBlastingTrigger = {
        spellName = reagents.volatileBlastingTrigger.name,
        spellId = "53281",
        producedItemId = reagents.volatileBlastingTrigger.id,
        producedAmount = "2",
        turnsYellowAtSkillLevel = 366,
        turnsGreenAtSkillLevel = 375,
        turnsGreyAtSkillLevel = 385,
        reagents = {
            {
                name = reagents.cobaltBar.name,
                id = reagents.cobaltBar.id,
                amount = 3
            },
            {
                name = reagents.crystallizedWater.name,
                id = reagents.crystallizedWater.id,
                amount = 1
            }
        }
    },

    overchargedCapacitor = {
        spellName = reagents.overchargedCapacitor.name,
        spellId = "56464",
        producedItemId = reagents.overchargedCapacitor.id,
        turnsYellowAtSkillLevel = 380,
        turnsGreenAtSkillLevel = 385,
        turnsGreyAtSkillLevel = 390,
        reagents = {
            {
                name = reagents.cobaltBar.name,
                id = reagents.cobaltBar.id,
                amount = 4
            },
            {
                name = reagents.crystallizedEarth.name,
                id = reagents.crystallizedEarth.id,
                amount = 1
            }
        }
    },

    froststeelTube = {
        spellName = reagents.froststeelTube.name,
        spellId = "56471",
        producedItemId = reagents.froststeelTube.id,
        turnsYellowAtSkillLevel = 395,
        turnsGreenAtSkillLevel = 400,
        turnsGreyAtSkillLevel = 405,
        reagents = {
            {
                name = reagents.cobaltBar.name,
                id = reagents.cobaltBar.id,
                amount = 8
            },
            {
                name = reagents.crystallizedWater.name,
                id = reagents.crystallizedWater.id,
                amount = 1
            }
        }
    },


    -- Tools

    arclightSpanner = {
        spellName = "Arclight Spanner",
        spellId = "7430",
        producedItemId = "6219",
        turnsYellowAtSkillLevel = 70,
        turnsGreenAtSkillLevel = 80,
        turnsGreyAtSkillLevel = 90,
        reagents = {
            {
                name = reagents.copperBar.name,
                id = reagents.copperBar.id,
                amount = 6
            }
        }
    },

    gyromaticMicroAdjustor = {
        spellName = "Gyromatic Micro-Adjustor",
        spellId = "12590",
        producedItemId = "10498",
        turnsYellowAtSkillLevel = 175,
        turnsGreenAtSkillLevel = 195,
        turnsGreyAtSkillLevel = 215,
        reagents = {
            {
                name = reagents.steelBar.name,
                id = reagents.steelBar.id,
                amount = 4
            }
        }
    },

    gnomishArmyKnife = {
        spellName = "Gnomish Army Knife",
        spellId = "56462",
        producedItemId = "40772",
        turnsYellowAtSkillLevel = 440,
        turnsGreenAtSkillLevel = 445,
        turnsGreyAtSkillLevel = 450,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 10
            },
            {
                name = reagents.skinningKnife.name,
                id = reagents.skinningKnife.id,
                amount = 1
            },
            {
                name = reagents.miningPick.name,
                id = reagents.miningPick.id,
                amount = 1
            },
            {
                name = reagents.blacksmithHammer.name,
                id = reagents.blacksmithHammer.id,
                amount = 1
            }
        }
    },


    -- Guns

    felIronMusket = {
        spellName = "Fel Iron Musket",
        spellId = "30312",
        producedItemId = "23742",
        turnsYellowAtSkillLevel = 330,
        turnsGreenAtSkillLevel = 340,
        turnsGreyAtSkillLevel = 350,
        reagents = {
            {
                name = reagents.heavyStock.name,
                id = reagents.heavyStock.id,
                amount = 1
            },
            {
                name = reagents.felIronCasing.name,
                id = reagents.felIronCasing.id,
                amount = 3
            },
            {
                name = reagents.handfulOfFelIronBolts.name,
                id = reagents.handfulOfFelIronBolts.id,
                amount = 6
            }
        }
    },

    diamondCutRefractorScope = {
        spellName = "Diamond-cut Refractor Scope",
        spellId = "61471",
        producedItemId = "44739",
        turnsYellowAtSkillLevel = 400,
        turnsGreenAtSkillLevel = 407,
        turnsGreyAtSkillLevel = 415,
        reagents = {
            {
                name = reagents.froststeelTube.name,
                id = reagents.froststeelTube.id,
                amount = 1
            },
            {
                name = reagents.handfulOfCobaltBolts.name,
                id = reagents.handfulOfCobaltBolts.id,
                amount = 2
            }
        }
    },


    -- Shells

    hiImpactMithrilSlugs = {
        spellName = "Hi-Impact Mithril Slugs",
        spellId = "12596",
        producedItemId = "10512",
        producedAmount = "200",
        turnsYellowAtSkillLevel = 210,
        turnsGreenAtSkillLevel = 230,
        turnsGreyAtSkillLevel = 250,
        reagents = {
            {
                name = reagents.mithrilBar.name,
                id = reagents.mithrilBar.id,
                amount = 1
            },
            {
                name = reagents.solidBlastingPowder.name,
                id = reagents.solidBlastingPowder.id,
                amount = 1
            }
        }
    },

    mithrilGyroShot = {
        spellName = "Mithril Gyro-Shot",
        spellId = "12621",
        producedItemId = "10513",
        producedAmount = "200",
        turnsYellowAtSkillLevel = 245,
        turnsGreenAtSkillLevel = 265,
        turnsGreyAtSkillLevel = 285,
        reagents = {
            {
                name = reagents.mithrilBar.name,
                id = reagents.mithrilBar.id,
                amount = 2
            },
            {
                name = reagents.solidBlastingPowder.name,
                id = reagents.solidBlastingPowder.id,
                amount = 2
            }
        }
    },

    thoriumShells = {
        spellName = "Thorium Shells",
        spellId = "19800",
        producedItemId = "15997",
        producedAmount = "200",
        turnsYellowAtSkillLevel = 295,
        turnsGreenAtSkillLevel = 300,
        turnsGreyAtSkillLevel = 305,
        reagents = {
            {
                name = reagents.thoriumBar.name,
                id = reagents.thoriumBar.id,
                amount = 2
            },
            {
                name = reagents.denseBlastingPowder.name,
                id = reagents.denseBlastingPowder.id,
                amount = 1
            }
        }
    },

    mammothCutters = {
        spellName = "Mammoth Cutters",
        spellId = "56474",
        producedItemId = "41164",
        producedAmount = "1000",
        turnsYellowAtSkillLevel = 410,
        turnsGreenAtSkillLevel = 412,
        turnsGreyAtSkillLevel = 420,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 1
            },
            {
                name = reagents.volatileBlastingTrigger.name,
                id = reagents.volatileBlastingTrigger.id,
                amount = 1
            }
        }
    },

    saroniteRazorheads = {
        spellName = "Saronite Razorheads",
        spellId = "56475",
        producedItemId = "41165",
        producedAmount = "1000",
        turnsYellowAtSkillLevel = 415,
        turnsGreenAtSkillLevel = 417,
        turnsGreyAtSkillLevel = 425,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 2
            }
        }
    },



    hammerPick = {
        spellName = "Hammer Pick",
        spellId = "56459",
        producedItemId = "40892",
        turnsYellowAtSkillLevel = 380,
        turnsGreenAtSkillLevel = 385,
        turnsGreyAtSkillLevel = 390,
        reagents = {
            {
                name = reagents.cobaltBar.name,
                id = reagents.cobaltBar.id,
                amount = 5
            }
        }
    },

    bladedPickaxe = {
        spellName = "Bladed Pickaxe",
        spellId = "56461",
        producedItemId = "40893",
        turnsYellowAtSkillLevel = 380,
        turnsGreenAtSkillLevel = 385,
        turnsGreyAtSkillLevel = 390,
        reagents = {
            {
                name = reagents.cobaltBar.name,
                id = reagents.cobaltBar.id,
                amount = 5
            }
        }
    },


    -- Mechanized Snow Goggles

    mechanizedSnowGogglesCloth = {
        spellName = "Mechanized Snow Goggles",
        spellId = "56465",
        producedItemId = "41112",
        turnsYellowAtSkillLevel = 425,
        turnsGreenAtSkillLevel = 432,
        turnsGreyAtSkillLevel = 440,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 8
            },
            {
                name = reagents.boreanLeather.name,
                id = reagents.boreanLeather.id,
                amount = 2
            },
            {
                name = reagents.eternalShadow.name,
                id = reagents.eternalShadow.id,
                amount = 1
            }
        }
    },

    mechanizedSnowGogglesLeather = {
        spellName = "Mechanized Snow Goggles",
        spellId = "61481",
        producedItemId = "44740",
        turnsYellowAtSkillLevel = 425,
        turnsGreenAtSkillLevel = 432,
        turnsGreyAtSkillLevel = 440,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 8
            },
            {
                name = reagents.boreanLeather.name,
                id = reagents.boreanLeather.id,
                amount = 2
            },
            {
                name = reagents.eternalShadow.name,
                id = reagents.eternalShadow.id,
                amount = 1
            }
        }
    },

    mechanizedSnowGogglesMail = {
        spellName = "Mechanized Snow Goggles",
        spellId = "61482",
        producedItemId = "44741",
        turnsYellowAtSkillLevel = 425,
        turnsGreenAtSkillLevel = 432,
        turnsGreyAtSkillLevel = 440,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 8
            },
            {
                name = reagents.boreanLeather.name,
                id = reagents.boreanLeather.id,
                amount = 2
            },
            {
                name = reagents.eternalShadow.name,
                id = reagents.eternalShadow.id,
                amount = 1
            }
        }
    },

    mechanizedSnowGogglesPlate = {
        spellName = "Mechanized Snow Goggles",
        spellId = "61483",
        producedItemId = "44742",
        turnsYellowAtSkillLevel = 425,
        turnsGreenAtSkillLevel = 432,
        turnsGreyAtSkillLevel = 440,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 8
            },
            {
                name = reagents.boreanLeather.name,
                id = reagents.boreanLeather.id,
                amount = 2
            },
            {
                name = reagents.eternalShadow.name,
                id = reagents.eternalShadow.id,
                amount = 1
            }
        }
    },


    -- Trinket

    noiseMachine = {
        spellName = "Noise Machine",
        spellId = "56467",
        producedItemId = "40865",
        turnsYellowAtSkillLevel = 435,
        turnsGreenAtSkillLevel = 440,
        turnsGreyAtSkillLevel = 445,
        reagents = {
            {
                name = reagents.froststeelTube.name,
                id = reagents.froststeelTube.id,
                amount = 2
            },
            {
                name = reagents.overchargedCapacitor.name,
                id = reagents.overchargedCapacitor.id,
                amount = 2
            },
            {
                name = reagents.handfulOfCobaltBolts.name,
                id = reagents.handfulOfCobaltBolts.id,
                amount = 8
            }
        }
    },

    sonicBooster = {
        spellName = "Sonic Booster",
        spellId = "56466",
        producedItemId = "40767",
        turnsYellowAtSkillLevel = 435,
        turnsGreenAtSkillLevel = 440,
        turnsGreyAtSkillLevel = 445,
        reagents = {
            {
                name = reagents.froststeelTube.name,
                id = reagents.froststeelTube.id,
                amount = 2
            },
            {
                name = reagents.overchargedCapacitor.name,
                id = reagents.overchargedCapacitor.id,
                amount = 4
            },
            {
                name = reagents.handfulOfCobaltBolts.name,
                id = reagents.handfulOfCobaltBolts.id,
                amount = 2
            }
        }
    },


    -- Others (Consumable)

    whiteSmokeFlare = {
        spellName = "White Smoke Flare",
        spellId = "30341",
        producedItemId = "23768",
        producedAmount = "3",
        turnsYellowAtSkillLevel = 335,
        turnsGreenAtSkillLevel = 345,
        turnsGreyAtSkillLevel = 355,
        reagents = {
            {
                name = reagents.elementalBlastingPowder.name,
                id = reagents.elementalBlastingPowder.id,
                amount = 1
            },
            {
                name = reagents.netherweaveCloth.name,
                id = reagents.netherweaveCloth.id,
                amount = 1
            }
        }
    },

    boxOfBombs = {
        spellName = "Box of Bombs",
        spellId = "56468",
        producedItemId = "44951",
        turnsYellowAtSkillLevel = 410,
        turnsGreenAtSkillLevel = 415,
        turnsGreyAtSkillLevel = 420,
        reagents = {
            {
                name = reagents.saroniteBar.name,
                id = reagents.saroniteBar.id,
                amount = 5
            },
            {
                name = reagents.volatileBlastingTrigger.name,
                id = reagents.volatileBlastingTrigger.id,
                amount = 1
            }
        }
    }

}
