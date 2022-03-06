local addonName, addonTable = ...;

local reagents = addonTable.recipes.reagents;

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

  -- Solid Blasting Powder is here only for testing purposes
  solidBlastingPowder = {
    spellName = "Solid Blasting Powder",
    spellId = "12585",
    producedItemId = "10505",
    turnsGreyAtSkillLevel = 195,
    turnsYellowAtSkillLevel = 175,
    turnsGreenAtSkillLevel = 185,
    reagents = {
      {
        name = reagents.solidStone.name,
        id = reagents.solidStone.id,
        amount = 2
      }
    }
  }
}
