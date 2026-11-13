local addonName, addonTable = ...;

if not addonTable.recipes or not addonTable.recipes.cooking then
    print("|cff" .. addonTable.chat_frame_error_color .. '[Profession Capper] Error loading Cooking module|r');
    return
end

local cookingRecipes = addonTable.recipes.cooking;

addonTable.professions = addonTable.professions or {};

addonTable.professions.cooking = {

    {
        min = 1,
        max = 19,

        recipes = {
            cookingRecipes.spiceBread,
            cookingRecipes.herbBackedEgg,
            cookingRecipes.charredWolfMeat,
            cookingRecipes.roastedBoarMeat,
            cookingRecipes.brilliantSmallFish,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 20,
        max = 39,

        recipes = {
            cookingRecipes.spiceBread,
            cookingRecipes.scorpidSurprise,
            cookingRecipes.herbBackedEgg,
            cookingRecipes.charredWolfMeat,
            cookingRecipes.roastedBoarMeat,
            cookingRecipes.brilliantSmallFish,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 40,
        max = 44,

        recipes = {
            cookingRecipes.scorpidSurprise,
            cookingRecipes.herbBackedEgg,
            cookingRecipes.charredWolfMeat,
            cookingRecipes.roastedBoarMeat,
            cookingRecipes.brilliantSmallFish,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 45,
        max = 49,

        recipes = {
            cookingRecipes.smokedBearMeat,
            cookingRecipes.scorpidSurprise,
            cookingRecipes.spicedWolfMeat,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 50,
        max = 59,

        recipes = {
            cookingRecipes.smokedBearMeat,
            cookingRecipes.batBites,
            cookingRecipes.scorpidSurprise,
            cookingRecipes.coyoteSteak,
            cookingRecipes.boiledClams,
            cookingRecipes.goretuskLiverPie,
            cookingRecipes.lochFrenzyDelight,
            cookingRecipes.longjawMudSnapper,
            cookingRecipes.rainbowFinAlbacore,
            cookingRecipes.striderStew,
            cookingRecipes.spicedWolfMeat,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 60,
        max = 69,

        recipes = {
            cookingRecipes.crunchySpiderSurprise,
            cookingRecipes.smokedBearMeat,
            cookingRecipes.batBites,
            cookingRecipes.scorpidSurprise,
            cookingRecipes.coyoteSteak,
            cookingRecipes.boiledClams,
            cookingRecipes.goretuskLiverPie,
            cookingRecipes.lochFrenzyDelight,
            cookingRecipes.longjawMudSnapper,
            cookingRecipes.rainbowFinAlbacore,
            cookingRecipes.striderStew,
            cookingRecipes.spicedWolfMeat,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 70,
        max = 79,

        recipes = {
            cookingRecipes.crunchySpiderSurprise,
            cookingRecipes.smokedBearMeat,
            cookingRecipes.batBites,
            cookingRecipes.coyoteSteak,
            cookingRecipes.boiledClams,
            cookingRecipes.goretuskLiverPie,
            cookingRecipes.lochFrenzyDelight,
            cookingRecipes.longjawMudSnapper,
            cookingRecipes.rainbowFinAlbacore,
            cookingRecipes.striderStew,
            cookingRecipes.scorpidSurprise,
            cookingRecipes.crispyBatWing,
            cookingRecipes.lynxSteak,
            cookingRecipes.slitherskinMackerel,
            cookingRecipes.roastedMoongrazeTenderloin

        }
    },

    {
        min = 80,
        max = 109,

        recipes = {
            cookingRecipes.smokedSagefish,
            cookingRecipes.dryPorkRibs,
            cookingRecipes.crabCake,
            cookingRecipes.crunchySpiderSurprise,
            cookingRecipes.batBites,
            cookingRecipes.coyoteSteak,
            cookingRecipes.boiledClams,
            cookingRecipes.goretuskLiverPie,
            cookingRecipes.lochFrenzyDelight,
            cookingRecipes.longjawMudSnapper,
            cookingRecipes.rainbowFinAlbacore,
            cookingRecipes.striderStew

        }
    },

    {
        min = 110,
        max = 129,

        recipes = {
            cookingRecipes.bigBearSteak,
            cookingRecipes.gooeySpiderCake,
            cookingRecipes.smokedSagefish,
            cookingRecipes.crabCake,
            cookingRecipes.crunchySpiderSurprise,
            cookingRecipes.batBites,
            cookingRecipes.coyoteSteak,
            cookingRecipes.boiledClams,
            cookingRecipes.goretuskLiverPie,
            cookingRecipes.lochFrenzyDelight,
            cookingRecipes.longjawMudSnapper,
            cookingRecipes.rainbowFinAlbacore,
            cookingRecipes.striderStew

        }
    },

    {
        min = 130,
        max = 139,

        recipes = {
            cookingRecipes.curiouslyTastyOmelet,
            cookingRecipes.hotLionChops,
            cookingRecipes.leanWolfSteak,
            cookingRecipes.goblinDeviledClams,
            cookingRecipes.crocoliskGumbo,
            cookingRecipes.bigBearSteak,
            cookingRecipes.gooeySpiderCake,
            cookingRecipes.smokedSagefish,
            cookingRecipes.crabCake,
            cookingRecipes.coyoteSteak,
            cookingRecipes.boiledClams,
            cookingRecipes.goretuskLiverPie,
            cookingRecipes.lochFrenzyDelight,
            cookingRecipes.longjawMudSnapper,
            cookingRecipes.rainbowFinAlbacore,
            cookingRecipes.striderStew

        }
    },

    {
        min = 140,
        max = 174,

        recipes = {
            cookingRecipes.curiouslyTastyOmelet,
            cookingRecipes.hotLionChops,
            cookingRecipes.leanWolfSteak,
            cookingRecipes.goblinDeviledClams,
            cookingRecipes.crocoliskGumbo,
            cookingRecipes.bigBearSteak,
            cookingRecipes.gooeySpiderCake

        }
    },

    {
        min = 175,
        max = 224,

        recipes = {
            cookingRecipes.roastRaptor,
            cookingRecipes.barbecuedBuzzardWing,
            cookingRecipes.sagefishDelight,
            cookingRecipes.rockscaleCod,
            cookingRecipes.carrionSurprise,
            cookingRecipes.giantClamScorcho,
            cookingRecipes.mithrilHeadTrout,
            cookingRecipes.soothingTurtleBisque,
            cookingRecipes.jungleStew,
            cookingRecipes.misteryStew

        }
    },

    {
        min = 225,
        max = 249,

        recipes = {
            cookingRecipes.monsterOmelet,
            cookingRecipes.tenderWolfSteak,
            cookingRecipes.spicedChiliCrab,
            cookingRecipes.cookedGlossyMightfish,
            cookingRecipes.filetOfRedgill,
            cookingRecipes.spottedYellowtail,
            cookingRecipes.roastRaptor,
            cookingRecipes.sagefishDelight,
            cookingRecipes.mithrilHeadTrout,
            cookingRecipes.soothingTurtleBisque,
            cookingRecipes.jungleStew,
            cookingRecipes.spiderSausage

        }
    },

    {
        min = 250,
        max = 274,

        recipes = {
            cookingRecipes.juicyBearBurguer,
            cookingRecipes.charredBearKabobs,
            cookingRecipes.poachedSunscaleSalmon,
            cookingRecipes.clamletteMagnifique,
            cookingRecipes.monsterOmelet,
            cookingRecipes.tenderWolfSteak,
            cookingRecipes.spicedChiliCrab,
            cookingRecipes.cookedGlossyMightfish,
            cookingRecipes.filetOfRedgill,
            cookingRecipes.spottedYellowtail

        }
    },

    {
        min = 275,
        max = 284,

        recipes = {
            cookingRecipes.juicyBearBurguer,
            cookingRecipes.charredBearKabobs,
            cookingRecipes.poachedSunscaleSalmon,
            cookingRecipes.clamletteMagnifique

        }
    },

    {
        min = 285,
        max = 299,

        recipes = {
            cookingRecipes.smokedDesertDumplings,
            cookingRecipes.bakedSalmon,
            cookingRecipes.mightfishSteak,
            cookingRecipes.lobsterStew,
            cookingRecipes.runnTumTuberSurprise,
            cookingRecipes.clamletteMagnifique

        }
    },

    {
        min = 300,
        max = 309,

        recipes = {
            cookingRecipes.smokedDesertDumplings,
            cookingRecipes.ravagerDog,
            cookingRecipes.buzzardBites,
            cookingRecipes.blackenedTrout,
            cookingRecipes.feltailDelight,
            cookingRecipes.broiledBloodfin,
            cookingRecipes.kiblersBits,
            cookingRecipes.clamBar
        }
    },

    {
        min = 310,
        max = 324,

        recipes = {
            cookingRecipes.ravagerDog,
            cookingRecipes.buzzardBites,
            cookingRecipes.blackenedTrout,
            cookingRecipes.feltailDelight,
            cookingRecipes.broiledBloodfin,
            cookingRecipes.kiblersBits,
            cookingRecipes.clamBar,
            cookingRecipes.smokedDesertDumplings
        }
    },

    {
        min = 325,
        max = 329,

        recipes = {
            cookingRecipes.talbukSteak,
            cookingRecipes.roastedClefthoof,
            cookingRecipes.warpBurger,
            cookingRecipes.skullfishSoup,
            cookingRecipes.ravagerDog,
            cookingRecipes.buzzardBites,
            cookingRecipes.blackenedTrout,
            cookingRecipes.feltailDelight,
            cookingRecipes.broiledBloodfin
        }
    },

    {
        min = 330,
        max = 334,

        recipes = {
            cookingRecipes.talbukSteak,
            cookingRecipes.roastedClefthoof,
            cookingRecipes.warpBurger,
            cookingRecipes.skullfishSoup
        }
    },

    {
        min = 335,
        max = 349,

        recipes = {
            cookingRecipes.talbukSteak,
            cookingRecipes.roastedClefthoof,
            cookingRecipes.warpBurger,
            cookingRecipes.mokNathalShortribs,
            cookingRecipes.crunchySerpent
        }
    },


    {
        min = 350,
        max = 374,

        recipes = {
            cookingRecipes.bakedMantaRay,
            cookingRecipes.mammothMeal,
            cookingRecipes.poachedNettlefish,
            cookingRecipes.smokedSalmon,
            cookingRecipes.pickedFangtooth,
            cookingRecipes.grilledSculpin,
            cookingRecipes.rhinoDogs,
            cookingRecipes.wormDelight,
            cookingRecipes.roastedWorg,
            cookingRecipes.shoveltuskSteak,
            cookingRecipes.northernStew,
            cookingRecipes.smokedRockfin,
            cookingRecipes.grilledBonescale,
            cookingRecipes.sauteedGoby,
            cookingRecipes.dalaranClamChowder,
            cookingRecipes.spicyCrawdad,
            cookingRecipes.fishermansFeast,
            cookingRecipes.hotButteredTrout
        }
    },

    {
        min = 375,
        max = 399,

        recipes = {
            cookingRecipes.kungaloosh,
            cookingRecipes.bakedMantaRay,
            cookingRecipes.mammothMeal,
            cookingRecipes.poachedNettlefish,
            cookingRecipes.smokedSalmon,
            cookingRecipes.pickedFangtooth,
            cookingRecipes.grilledSculpin,
            cookingRecipes.rhinoDogs,
            cookingRecipes.wormDelight,
            cookingRecipes.roastedWorg,
            cookingRecipes.shoveltuskSteak,
            cookingRecipes.dalaranClamChowder
        }
    },

    {
        min = 400,
        max = 424,

        recipes = {
            cookingRecipes.blackenedDragonfin,
            cookingRecipes.dragonfinFilet,
            cookingRecipes.blackenedWorgSteak,
            cookingRecipes.veryBurntWorg,
            cookingRecipes.cuttlesteak,
            cookingRecipes.firecrackerSalmon,
            cookingRecipes.heartyRhino,
            cookingRecipes.imperialMantaSteak,
            cookingRecipes.poachedNorthernSculpin,
            cookingRecipes.spicedMammothTreats,
            cookingRecipes.spicyBlueNettlefish,
            cookingRecipes.spicyFriedHerring,
            cookingRecipes.trackerSnacks
        }
    },

    {
        min = 425,
        max = 449,

        recipes = {
            cookingRecipes.giganticFeast,
            cookingRecipes.smallFeast,
            cookingRecipes.blackenedDragonfin,
            cookingRecipes.dragonfinFilet,
            cookingRecipes.blackenedWorgSteak,
            cookingRecipes.veryBurntWorg,
            cookingRecipes.cuttlesteak,
            cookingRecipes.firecrackerSalmon,
            cookingRecipes.heartyRhino,
            cookingRecipes.imperialMantaSteak,
            cookingRecipes.poachedNorthernSculpin,
            cookingRecipes.spicedMammothTreats,
            cookingRecipes.spicyBlueNettlefish,
            cookingRecipes.spicyFriedHerring,
            cookingRecipes.trackerSnacks
        }
    }

}

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Cooking module|r');