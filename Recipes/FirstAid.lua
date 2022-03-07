local addonName, addonTable = ...;

local reagents = addonTable.recipes.reagents;

addonTable.recipes.firstAid = {
    linenBandage = {
        spellName = "Linen Bandage",
        spellId = "3275",
        producedItemId = "1251",
        turnsYellowAtSkillLevel = 30,
        turnsGreenAtSkillLevel = 45,
        turnsGreyAtSkillLevel = 60,
        reagents = {
            {
                name = reagents.linenCloth.name,
                id = reagents.linenCloth.id,
                amount = 1
            }
        }
    },

  heavyLinenBandage = {
      spellName = "Heavy Linen Bandage",
      spellId = "3276",
      producedItemId = "2581",
      turnsYellowAtSkillLevel = 50,
      turnsGreenAtSkillLevel = 75,
      turnsGreyAtSkillLevel = 100,
      reagents = {
          {
              name = reagents.linenCloth.name,
              id = reagents.linenCloth.id,
              amount = 2
          }
      }
  },

  woolBandage = {
      spellName = "Wool Bandage",
      spellId = "3277",
      producedItemId = "3530",
      turnsYellowAtSkillLevel = 80,
      turnsGreenAtSkillLevel = 115,
      turnsGreyAtSkillLevel = 150,
      reagents = {
          {
              name = reagents.woolCloth.name,
              id = reagents.woolCloth.id,
              amount = 1
          }
      }
  },

  heavyWoolBandage = {
      spellName = "Heavy Wool Bandage",
      spellId = "3278",
      producedItemId = "3531",
      turnsYellowAtSkillLevel = 115,
      turnsGreenAtSkillLevel = 150,
      turnsGreyAtSkillLevel = 185,
      reagents = {
          {
              name = reagents.woolCloth.name,
              id = reagents.woolCloth.id,
              amount = 2
          }
      }
  },

  silkBandage = {
      spellName = "Silk Bandage",
      spellId = "7928",
      producedItemId = "6450",
      turnsYellowAtSkillLevel = 150,
      turnsGreenAtSkillLevel = 180,
      turnsGreyAtSkillLevel = 210,
      reagents = {
          {
              name = reagents.silkCloth.name,
              id = reagents.silkCloth.id,
              amount = 1
          }
      }
  },

  heavySilkBandage = {
      spellName = "Heavy Silk Bandage",
      spellId = "7929",
      producedItemId = "6451",
      turnsYellowAtSkillLevel = 180,
      turnsGreenAtSkillLevel = 210,
      turnsGreyAtSkillLevel = 240,
      reagents = {
          {
              name = reagents.silkCloth.name,
              id = reagents.silkCloth.id,
              amount = 2
          }
      }
  },

  mageweaveBandage = {
      spellName = "Mageweave Bandage",
      spellId = "10840",
      producedItemId = "8544",
      turnsYellowAtSkillLevel = 210,
      turnsGreenAtSkillLevel = 240,
      turnsGreyAtSkillLevel = 270,
      reagents = {
          {
              name = reagents.mageweaveCloth.name,
              id = reagents.mageweaveCloth.id,
              amount = 1
          }
      }
  },

  heavyMageweaveBandage = {
      spellName = "Heavy Mageweave Bandage",
      spellId = "10841",
      producedItemId = "8545",
      turnsYellowAtSkillLevel = 240,
      turnsGreenAtSkillLevel = 270,
      turnsGreyAtSkillLevel = 300,
      reagents = {
          {
              name = reagents.mageweaveCloth.name,
              id = reagents.mageweaveCloth.id,
              amount = 2
          }
      }
  },

  runeclothBandage = {
      spellName = "Runecloth Bandage",
      spellId = "18629",
      producedItemId = "14529",
      turnsYellowAtSkillLevel = 260,
      turnsGreenAtSkillLevel = 290,
      turnsGreyAtSkillLevel = 320,
      reagents = {
          {
              name = reagents.runecloth.name,
              id = reagents.runecloth.id,
              amount = 1
          }
      }
  },

  heavyRuneclothBandage = {
      spellName = "Heavy Runecloth Bandage",
      spellId = "18630",
      producedItemId = "14530",
      turnsYellowAtSkillLevel = 290,
      turnsGreenAtSkillLevel = 320,
      turnsGreyAtSkillLevel = 350,
      reagents = {
          {
              name = reagents.runecloth.name,
              id = reagents.runecloth.id,
              amount = 2
          }
      }
  },

  netherweaveBandage = {
      spellName = "Netherweave Bandage",
      spellId = "27032",
      producedItemId = "21990",
      turnsYellowAtSkillLevel = 330,
      turnsGreenAtSkillLevel = 347,
      turnsGreyAtSkillLevel = 365,
      reagents = {
          {
              name = reagents.netherweaveCloth.name,
              id = reagents.netherweaveCloth.id,
              amount = 1
          }
      }
  },

  heavyNetherweaveBandage = {
      spellName = "Heavy Netherweave Bandage",
      spellId = "27033",
      producedItemId = "21991",
      turnsYellowAtSkillLevel = 360,
      turnsGreenAtSkillLevel = 367,
      turnsGreyAtSkillLevel = 375,
      reagents = {
          {
              name = reagents.netherweaveCloth.name,
              id = reagents.netherweaveCloth.id,
              amount = 2
          }
      }
  },

  frostweaveBandage = {
      spellName = "Frostweave Bandage",
      spellId = "45545",
      producedItemId = "34721",
      turnsYellowAtSkillLevel = 375,
      turnsGreenAtSkillLevel = 392,
      turnsGreyAtSkillLevel = 410,
      reagents = {
          {
              name = reagents.frostweaveCloth.name,
              id = reagents.frostweaveCloth.id,
              amount = 1
          }
      }
  },

  heavyFrostweaveBandage = {
      spellName = "Heavy Frostweave Bandage",
      spellId = "45546",
      producedItemId = "34722",
      turnsYellowAtSkillLevel = 400,
      turnsGreenAtSkillLevel = 430,
      turnsGreyAtSkillLevel = 470,
      reagents = {
          {
              name = reagents.frostweaveCloth.name,
              id = reagents.frostweaveCloth.id,
              amount = 2
          }
      }
  },

  antiVenom = {
      spellName = "Anti-Venom",
      spellId = "7934",
      producedItemId = "6452",
      turnsYellowAtSkillLevel = 80,
      turnsGreenAtSkillLevel = 115,
      turnsGreyAtSkillLevel = 150,
      reagents = {
          {
              name = reagents.smallVenonSac.name,
              id = reagents.smallVenonSac.id,
              amount = 1
          }
      }
  },

  strongAntiVenom = {
      spellName = "Strong Anti-Venom",
      spellId = "7935",
      producedItemId = "6453",
      turnsYellowAtSkillLevel = 130,
      turnsGreenAtSkillLevel = 165,
      turnsGreyAtSkillLevel = 200,
      reagents = {
          {
              name = reagents.largeVenomSac.name,
              id = reagents.largeVenomSac.id,
              amount = 1
          }
      }
  },

  powerfulAntiVenom = {
      spellName = "Powerful Anti-Venom",
      spellId = "23787",
      producedItemId = "19440",
      turnsYellowAtSkillLevel = 300,
      turnsGreenAtSkillLevel = 330,
      turnsGreyAtSkillLevel = 360,
      reagents = {
          {
              name = reagents.hugeVenonSac.name,
              id = reagents.hugeVenonSac.id,
              amount = 1
          }
      }
  }

}
