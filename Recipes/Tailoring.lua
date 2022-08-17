local addonName, addonTable = ...;

local reagents = addonTable.recipes.reagents;

addonTable.recipes.tailoring = {


    -- Bolts of Cloth

    boltOfLinenCloth = {
        spellName = reagents.boltOfLinenCloth.name,
        spellId = "2963",
        producedItemId = reagents.boltOfLinenCloth.id,
        turnsYellowAtSkillLevel = 25,
        turnsGreenAtSkillLevel = 37,
        turnsGreyAtSkillLevel = 50,
        reagents = {
            {
                name = reagents.linenCloth.name,
                id = reagents.linenCloth.id,
                amount = 2
            }
        }
    },

    boltOfWoolenCloth = {
        spellName = reagents.boltOfWoolenCloth.name,
        spellId = "2964",
        producedItemId = reagents.boltOfWoolenCloth.id,
        turnsYellowAtSkillLevel = 90,
        turnsGreenAtSkillLevel = 97,
        turnsGreyAtSkillLevel = 105,
        reagents = {
            {
                name = reagents.woolCloth.name,
                id = reagents.woolCloth.id,
                amount = 3
            }
        }
    },

    boltOfSilkCloth = {
        spellName = reagents.boltOfSilkCloth.name,
        spellId = "3839",
        producedItemId = reagents.boltOfSilkCloth.id,
        turnsYellowAtSkillLevel = 135,
        turnsGreenAtSkillLevel = 140,
        turnsGreyAtSkillLevel = 145,
        reagents = {
            {
                name = reagents.silkCloth.name,
                id = reagents.silkCloth.id,
                amount = 4
            }
        }
    },

    boltOfMageweave = {
        spellName = reagents.boltOfMageweave.name,
        spellId = "3865",
        producedItemId = reagents.boltOfMageweave.id,
        turnsYellowAtSkillLevel = 180,
        turnsGreenAtSkillLevel = 182,
        turnsGreyAtSkillLevel = 185,
        reagents = {
            {
                name = reagents.mageweaveCloth.name,
                id = reagents.mageweaveCloth.id,
                amount = 4
            }
        }
    },

    boltOfRunecloth = {
        spellName = reagents.boltOfRunecloth.name,
        spellId = "18401",
        producedItemId = reagents.boltOfRunecloth.id,
        turnsYellowAtSkillLevel = 255,
        turnsGreenAtSkillLevel = 257,
        turnsGreyAtSkillLevel = 260,
        reagents = {
            {
                name = reagents.runecloth.name,
                id = reagents.runecloth.id,
                amount = 4
            }
        }
    },

    boltOfNetherweave = {
        spellName = reagents.boltOfNetherweave.name,
        spellId = "26745",
        producedItemId = reagents.boltOfNetherweave.id,
        turnsYellowAtSkillLevel = 305,
        turnsGreenAtSkillLevel = 315,
        turnsGreyAtSkillLevel = 325,
        reagents = {
            {
                name = reagents.netherweaveCloth.name,
                id = reagents.netherweaveCloth.id,
                amount = 5
            }
        }
    },

    boltOfImbuedNetherweave = {
        spellName = reagents.boltOfImbuedNetherweave.name,
        spellId = "26747",
        producedItemId = reagents.boltOfImbuedNetherweave.id,
        turnsYellowAtSkillLevel = 330,
        turnsGreenAtSkillLevel = 335,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.boltOfNetherweave.name,
                id = reagents.boltOfNetherweave.id,
                amount = 3
            },
            {
                name = reagents.arcaneDust.name,
                id = reagents.arcaneDust.id,
                amount = 2
            }
        }
    },

    boltOfFrostweave = {
        spellName = reagents.boltOfFrostweave.name,
        spellId = "55899",
        producedItemId = reagents.boltOfFrostweave.id,
        turnsYellowAtSkillLevel = 370,
        turnsGreenAtSkillLevel = 372,
        turnsGreyAtSkillLevel = 375,
        reagents = {
            {
                name = reagents.frostweaveCloth.name,
                id = reagents.frostweaveCloth.id,
                amount = 5
            }
        }
    },

    boltOfImbuedFrostweave = {
        spellName = reagents.boltOfImbuedFrostweave.name,
        spellId = "55900",
        producedItemId = reagents.boltOfImbuedFrostweave.id,
        turnsYellowAtSkillLevel = 400,
        turnsGreenAtSkillLevel = 402,
        turnsGreyAtSkillLevel = 405,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 2
            },
            {
                name = reagents.infiniteDust.name,
                id = reagents.infiniteDust.id,
                amount = 2
            }
        }
    },


    -- Bags

    woolenBag = {
        spellName = "Woolen Bag",
        spellId = "3757",
        producedItemId = "4240",
        turnsYellowAtSkillLevel = 105,
        turnsGreenAtSkillLevel = 122,
        turnsGreyAtSkillLevel = 140,
        reagents = {
            {
                name = reagents.boltOfWoolenCloth.name,
                id = reagents.boltOfWoolenCloth.id,
                amount = 3
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 1
            }
        }
    },

    frostweaveBag = {
        spellName = "Frostweave Bag",
        spellId = "56007",
        producedItemId = "41599",
        turnsYellowAtSkillLevel = 430,
        turnsGreenAtSkillLevel = 440,
        turnsGreyAtSkillLevel = 450,
        reagents = {
            {
                name = reagents.boltOfImbuedFrostweave.name,
                id = reagents.boltOfImbuedFrostweave.id,
                amount = 6
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 2
            }
        }
    },


    -- Armor

    linenBelt = {
        spellName = "Linen Belt",
        spellId = "8776",
        producedItemId = "7026",
        turnsYellowAtSkillLevel = 50,
        turnsGreenAtSkillLevel = 67,
        turnsGreyAtSkillLevel = 85,
        reagents = {
            {
                name = reagents.boltOfLinenCloth.name,
                id = reagents.boltOfLinenCloth.id,
                amount = 1
            },
            {
                name = reagents.coarseThread.name,
                id = reagents.coarseThread.id,
                amount = 1
            }
        }
    },

    heavyLinenGloves = {
        spellName = "Heavy Linen Gloves",
        spellId = "3840",
        producedItemId = "4607",
        turnsYellowAtSkillLevel = 60,
        turnsGreenAtSkillLevel = 77,
        turnsGreyAtSkillLevel = 95,
        reagents = {
            {
                name = reagents.boltOfLinenCloth.name,
                id = reagents.boltOfLinenCloth.id,
                amount = 2
            },
            {
                name = reagents.coarseThread.name,
                id = reagents.coarseThread.id,
                amount = 1
            }
        }
    },

    reinforcedLinenCape = {
        spellName = "Reinforced Linen Cape",
        spellId = "2397",
        producedItemId = "2580",
        turnsYellowAtSkillLevel = 85,
        turnsGreenAtSkillLevel = 102,
        turnsGreyAtSkillLevel = 120,
        reagents = {
            {
                name = reagents.boltOfLinenCloth.name,
                id = reagents.boltOfLinenCloth.id,
                amount = 2
            },
            {
                name = reagents.coarseThread.name,
                id = reagents.coarseThread.id,
                amount = 3
            }
        }
    },

    simpleKilt = {
        spellName = "Simple Kilt",
        spellId = "12046",
        producedItemId = "10047",
        turnsYellowAtSkillLevel = 100,
        turnsGreenAtSkillLevel = 117,
        turnsGreyAtSkillLevel = 135,
        reagents = {
            {
                name = reagents.boltOfLinenCloth.name,
                id = reagents.boltOfLinenCloth.id,
                amount = 4
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 1
            }
        }
    },

    doubleStitchedWoolenShoulders = {
        spellName = "Double-stitched Woolen Shoulders",
        spellId = "3848",
        producedItemId = "4314",
        turnsYellowAtSkillLevel = 135,
        turnsGreenAtSkillLevel = 152,
        turnsGreyAtSkillLevel = 170,
        reagents = {
            {
                name = reagents.boltOfWoolenCloth.name,
                id = reagents.boltOfWoolenCloth.id,
                amount = 3
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 2
            }
        }
    },

    azureSilkHood = {
        spellName = "Azure Silk Hood",
        spellId = "8760",
        producedItemId = "7048",
        turnsYellowAtSkillLevel = 155,
        turnsGreenAtSkillLevel = 160,
        turnsGreyAtSkillLevel = 165,
        reagents = {
            {
                name = reagents.boltOfSilkCloth.name,
                id = reagents.boltOfSilkCloth.id,
                amount = 2
            },
            {
                name = reagents.blueDye.name,
                id = reagents.blueDye.id,
                amount = 2
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 1
            }
        }
    },

    silkHeadband = {
        spellName = "Silk Headband",
        spellId = "8762",
        producedItemId = "7050",
        turnsYellowAtSkillLevel = 170,
        turnsGreenAtSkillLevel = 175,
        turnsGreyAtSkillLevel = 180,
        reagents = {
            {
                name = reagents.boltOfSilkCloth.name,
                id = reagents.boltOfSilkCloth.id,
                amount = 3
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 2
            }
        }
    },

    formalWhiteShirt = {
        spellName = "Formal White Shirt",
        spellId = "3871",
        producedItemId = "4334",
        turnsYellowAtSkillLevel = 180,
        turnsGreenAtSkillLevel = 185,
        turnsGreyAtSkillLevel = 190,
        reagents = {
            {
                name = reagents.boltOfSilkCloth.name,
                id = reagents.boltOfSilkCloth.id,
                amount = 3
            },
            {
                name = reagents.bleach.name,
                id = reagents.bleach.id,
                amount = 2
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 1
            }
        }
    },

    crimsonSilkVest = {
        spellName = "Crimson Silk Vest",
        spellId = "8791",
        producedItemId = "7058",
        turnsYellowAtSkillLevel = 205,
        turnsGreenAtSkillLevel = 215,
        turnsGreyAtSkillLevel = 225,
        reagents = {
            {
                name = reagents.boltOfSilkCloth.name,
                id = reagents.boltOfSilkCloth.id,
                amount = 4
            },
            {
                name = reagents.redDye.name,
                id = reagents.redDye.id,
                amount = 2
            },
            {
                name = reagents.fineThread.name,
                id = reagents.fineThread.id,
                amount = 2
            }
        }
    },

    crimsonSilkPantaloons = {
        spellName = "Crimson Silk Pantaloons",
        spellId = "8799",
        producedItemId = "7062",
        turnsGreyAtSkillLevel = 235,
        turnsYellowAtSkillLevel = 215,
        turnsGreenAtSkillLevel = 225,
        reagents = {
            {
                name = reagents.boltOfSilkCloth.name,
                id = reagents.boltOfSilkCloth.id,
                amount = 4
            },
            {
                name = reagents.redDye.name,
                id = reagents.redDye.id,
                amount = 2
            },
            {
                name = reagents.silkenThread.name,
                id = reagents.silkenThread.id,
                amount = 2
            }
        }
    },

    blackMageweaveLeggings = {
        spellName = "Black Mageweave Leggings",
        spellId = "12049",
        producedItemId = "9999",
        turnsYellowAtSkillLevel = 220,
        turnsGreenAtSkillLevel = 235,
        turnsGreyAtSkillLevel = 250,
        reagents = {
            {
                name = reagents.boltOfMageweave.name,
                id = reagents.boltOfMageweave.id,
                amount = 2
            },
            {
                name = reagents.silkenThread.name,
                id = reagents.silkenThread.id,
                amount = 3
            }
        }
    },

    blackMageweaveVest = {
        spellName = "Black Mageweave Vest",
        spellId = "12048",
        producedItemId = "9998",
        turnsYellowAtSkillLevel = 220,
        turnsGreenAtSkillLevel = 235,
        turnsGreyAtSkillLevel = 250,
        reagents = {
            {
                name = reagents.boltOfMageweave.name,
                id = reagents.boltOfMageweave.id,
                amount = 2
            },
            {
                name = reagents.silkenThread.name,
                id = reagents.silkenThread.id,
                amount = 3
            }
        }
    },

    blackMageweaveGloves = {
        spellName = "Black Mageweave Gloves",
        spellId = "12053",
        producedItemId = "10003",
        turnsYellowAtSkillLevel = 230,
        turnsGreenAtSkillLevel = 245,
        turnsGreyAtSkillLevel = 260,
        reagents = {
            {
                name = reagents.boltOfMageweave.name,
                id = reagents.boltOfMageweave.id,
                amount = 2
            },
            {
                name = reagents.heavySilkenThread.name,
                id = reagents.heavySilkenThread.id,
                amount = 2
            }
        }
    },

    blackMageweaveHeadband = {
        spellName = "Black Mageweave Headband",
        spellId = "12072",
        producedItemId = "10024",
        turnsYellowAtSkillLevel = 245,
        turnsGreenAtSkillLevel = 260,
        turnsGreyAtSkillLevel = 275,
        reagents = {
            {
                name = reagents.boltOfMageweave.name,
                id = reagents.boltOfMageweave.id,
                amount = 3
            },
            {
                name = reagents.heavySilkenThread.name,
                id = reagents.heavySilkenThread.id,
                amount = 2
            }
        }
    },

    blackMageweaveShoulders = {
        spellName = "Black Mageweave Shoulders",
        spellId = "12074",
        producedItemId = "10027",
        turnsYellowAtSkillLevel = 245,
        turnsGreenAtSkillLevel = 260,
        turnsGreyAtSkillLevel = 275,
        reagents = {
            {
                name = reagents.boltOfMageweave.name,
                id = reagents.boltOfMageweave.id,
                amount = 3
            },
            {
                name = reagents.heavySilkenThread.name,
                id = reagents.heavySilkenThread.id,
                amount = 2
            }
        }
    },

    runeclothBelt = {
        spellName = "Runecloth Belt",
        spellId = "18402",
        producedItemId = "13856",
        turnsYellowAtSkillLevel = 270,
        turnsGreenAtSkillLevel = 285,
        turnsGreyAtSkillLevel = 300,
        reagents = {
            {
                name = reagents.boltOfRunecloth.name,
                id = reagents.boltOfRunecloth.id,
                amount = 3
            },
            {
                name = reagents.runeThread.name,
                id = reagents.runeThread.id,
                amount = 1
            }
        }
    },

    runeclothGloves = {
        spellName = "Runecloth Gloves",
        spellId = "18417",
        producedItemId = "13863",
        turnsYellowAtSkillLevel = 290,
        turnsGreenAtSkillLevel = 305,
        turnsGreyAtSkillLevel = 320,
        reagents = {
            {
                name = reagents.boltOfRunecloth.name,
                id = reagents.boltOfRunecloth.id,
                amount = 5
            },
            {
                name = reagents.runeThread.name,
                id = reagents.runeThread.id,
                amount = 2
            }
        }
    },

    runeclothHeadband = {
        spellName = "Runecloth Headband",
        spellId = "18444",
        producedItemId = "13866",
        turnsYellowAtSkillLevel = 310,
        turnsGreenAtSkillLevel = 325,
        turnsGreyAtSkillLevel = 340,
        reagents = {
            {
                name = reagents.boltOfRunecloth.name,
                id = reagents.boltOfRunecloth.id,
                amount = 6
            },
            {
                name = reagents.runeThread.name,
                id = reagents.runeThread.id,
                amount = 2
            }
        }
    },

    netherweaveBoots = {
        spellName = "Netherweave Boots",
        spellId = "26772",
        producedItemId = "21853",
        turnsYellowAtSkillLevel = 345,
        turnsGreenAtSkillLevel = 350,
        turnsGreyAtSkillLevel = 355,
        reagents = {
            {
                name = reagents.boltOfNetherweave.name,
                id = reagents.boltOfNetherweave.id,
                amount = 6
            },
            {
                name = reagents.knothideLeather.name,
                id = reagents.knothideLeather.id,
                amount = 2
            },
            {
                name = reagents.runeThread.name,
                id = reagents.runeThread.id,
                amount = 1
            }
        }
    },

    netherweaveTunic = {
        spellName = "Netherweave Tunic",
        spellId = "26774",
        producedItemId = "21855",
        turnsYellowAtSkillLevel = 355,
        turnsGreenAtSkillLevel = 360,
        turnsGreyAtSkillLevel = 365,
        reagents = {
            {
                name = reagents.boltOfNetherweave.name,
                id = reagents.boltOfNetherweave.id,
                amount = 8
            },
            {
                name = reagents.runeThread.name,
                id = reagents.runeThread.id,
                amount = 2
            }
        }
    },

    frostwovenBelt = {
        spellName = "Frostwoven Belt",
        spellId = "55908",
        producedItemId = "41522",
        turnsYellowAtSkillLevel = 380,
        turnsGreenAtSkillLevel = 390,
        turnsGreyAtSkillLevel = 400,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 3
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    frostwovenBoots = {
        spellName = "Frostwoven Boots",
        spellId = "55906",
        producedItemId = "41520",
        turnsYellowAtSkillLevel = 385,
        turnsGreenAtSkillLevel = 395,
        turnsGreyAtSkillLevel = 405,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 4
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    frostwovenCowl = {
        spellName = "Frostwoven Cowl",
        spellId = "55907",
        producedItemId = "41521",
        turnsYellowAtSkillLevel = 390,
        turnsGreenAtSkillLevel = 400,
        turnsGreyAtSkillLevel = 410,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 5
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    duskweaveBelt = {
        spellName = "Duskweave Belt",
        spellId = "55914",
        producedItemId = "41543",
        turnsYellowAtSkillLevel = 400,
        turnsGreenAtSkillLevel = 405,
        turnsGreyAtSkillLevel = 410,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 7
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    duskweaveWristwraps = {
        spellName = "Duskweave Wristwraps",
        spellId = "55920",
        producedItemId = "41551",
        turnsYellowAtSkillLevel = 410,
        turnsGreenAtSkillLevel = 415,
        turnsGreyAtSkillLevel = 420,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 8
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    duskweaveGloves = {
        spellName = "Duskweave Gloves",
        spellId = "55922",
        producedItemId = "41545",
        turnsYellowAtSkillLevel = 415,
        turnsGreenAtSkillLevel = 420,
        turnsGreyAtSkillLevel = 425,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 9
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    duskweaveBoots = {
        spellName = "Duskweave Boots",
        spellId = "55924",
        producedItemId = "41544",
        turnsYellowAtSkillLevel = 420,
        turnsGreenAtSkillLevel = 425,
        turnsGreyAtSkillLevel = 430,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 10
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

    duskweaveShoulders = {
        spellName = "Duskweave Shoulders",
        spellId = "55923",
        producedItemId = "41550",
        turnsYellowAtSkillLevel = 420,
        turnsGreenAtSkillLevel = 425,
        turnsGreyAtSkillLevel = 430,
        reagents = {
            {
                name = reagents.boltOfFrostweave.name,
                id = reagents.boltOfFrostweave.id,
                amount = 10
            },
            {
                name = reagents.eterniumThread.name,
                id = reagents.eterniumThread.id,
                amount = 1
            }
        }
    },

}
