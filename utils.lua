local addonName, addonTable = ...;

addonTable.normalizeProfessionName =
function(professionName)

    return string.gsub(
            string.lower(professionName),
            "%s+",
            ""
    )
end