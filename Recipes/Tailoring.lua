local addonName, addonTable = ...;

addonTable.recipes.tailoring = {
  crimsonSilkPantaloons = {
    spellName = "Crimson Silk Pantaloons",
    spellId = "8799",
    producedItemId = "7062",
    turnsGreyAtSkillLevel = 235,
    turnsYellowAtSkillLevel = 215,
    turnsGreenAtSkillLevel = 225,
    reagents = {
      {
        name = "Bolt of Silk Cloth",
        amount = 4,
        id = "4305"
      },
      {
        name = "Red Dye",
        amount = 2,
        id = "2604"
      },
      {
        name = "Silken Thread",
        amount = 2,
        id = "4291"
      }
    }
  },
  solidBlastingPowder = {
    spellName = "Solid Blasting Powder",
    spellId = "12585",
    producedItemId = "10505",
    turnsGreyAtSkillLevel = 195,
    turnsYellowAtSkillLevel = 175,
    turnsGreenAtSkillLevel = 185,
    reagents = {
      {
        name = "Solid Stone",
        amount = 2,
        id = "7912"
      }
    }
  }
}
