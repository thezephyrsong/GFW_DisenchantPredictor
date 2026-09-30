------------------------------------------------------
-- localization.lua
------------------------------------------------------

FDP_CAN_DIS_TO = "Disenchants:"

FDP_MOST_LIKELY = "(most likely)"		-- chance of getting dust from any green
FDP_JUST_LIKELY = "(likely)"			-- chance of getting essence from a green weapon
FDP_OCCASIONALLY = "(occasionally)"		-- chance of getting essence from any other green
FDP_RARELY = "(rarely)"					-- chance of getting a shard from any green

FDP_CAN_DIS_FROM_FORMAT = "Disenchants from %s items."
FDP_LEVEL_FORMAT = "level %s"
FDP_LOWER = "lower level"
FDP_HIGHER = "higher level"

FDP_CRYSTAL_VERBOSE = "Always disenchants from |cffa335eeEpic|r items,\nrarely from |cff0070ddRare|r items."
FDP_SHARD_VERBOSE = "Always disenchants from |cff0070ddRare|r items,\nrarely from |cff1eff00Uncommon|r items."
FDP_ESSENCE_VERBOSE = "Can disenchant from any |cff1eff00Uncommon|r item,\nmore likely from weapons than from others."
FDP_DUST_VERBOSE = "Frequently disenchants from any |cff1eff00Uncommon|r items."

FDP_CANT_DIS_QUALITY_FORMAT = "%s most likely can't be disenchanted (only items of |cff1eff00Uncommon|r, |cff0070ddRare|r, or |cffa335eeEpic|r quality can)."
FDP_CANT_DIS_TYPE_FORMAT = "%s most likely can't be disenchanted. (Only non-stacking items which can be equipped on the Character window can.)"

FDP_ITEM_DIS_BY_LEVEL_FORMAT = "An item of level %s may disenchant into:"
FDP_DUST_BY_LEVEL_INFO = "(likely for green items)"
FDP_ESSENCE_BY_LEVEL_INFO = "(likely for green weapons, occasionally for other green items)"
FDP_SHARD_BY_LEVEL_INFO = "(rarely for green items, always for blue or better items)"

FDP_DISENCHANTING_STATUS = "Disenchanting %s..."
FDP_DISENCHANTING_DEBUG = "Disenchanting %s (ilvl %d)..."

-- Slash command errors
FDP_BAIL_FORMAT = "Can't determine disenchant info from %s."
FDP_ERROR_ITEMID_FORMAT = "Can't determine item ID from %s."

-- Special slash command components
FDP_CMD_LINK = "<item link>"

-- Slash command help
FDP_HELP_HELP = "Print this help."
FDP_HELP_LINK = "shift-click an item to see what it can disenchant to."

-- Status returned from slash commands
FDP_STATUS_REAGENTS_ON = "Showing disenchant level range on tooltips for enchanting reagents."
FDP_STATUS_REAGENTS_OFF = "Not adding info to tooltips for enchanting reagents."
FDP_STATUS_ITEMS_ON = "Showing disenchant predictions on tooltips for disenchantable items."
FDP_STATUS_ITEMS_OFF = "Not adding info to tooltips for disenchantable items."
FDP_STATUS_TOOLTIP_ON = "Adding info to tooltips."
FDP_STATUS_TOOLTIP_OFF = "Not adding any info to tooltips."
FDP_STATUS_VERBOSE_ON = "Also showing more specific info for certain enchanting reagent tooltips."
FDP_STATUS_VERBOSE_OFF = "Not showing more specific info for enchanting reagents."

FDP_OPTIONS_GENERAL	= "General Options"
FDP_OPTIONS_PROFILE	= "Options Profile"

FDP_OPTION_REAGENTS	= "Show origin in tooltips for enchanting reagents"
FDP_OPTION_ITEMS	= "Show disenchant products in item tooltips"
FDP_OPTION_VERBOSE	= "Show detailed reagent/disenchant info"


-- localized item names below here shouldn't be necessary
-- we get the real names from the client, and try to make sure it has cached them
-- but they're here as backups just in case.

DUST_STRANGE	= "Strange Dust"
DUST_SOUL		= "Soul Dust"
DUST_VISION		= "Vision Dust"
DUST_DREAM		= "Dream Dust"
DUST_ILLUSION	= "Illusion Dust"
DUST_ARCANE		= "Arcane Dust"
DUST_INFINITE	= "Infinite Dust"
DUST_HYPNOTIC	= "Hypnotic Dust"

ESSENCE_MAGIC_LESSER	= "Lesser Magic Essence"
ESSENCE_MAGIC_GREATER	= "Greater Magic Essence"
ESSENCE_ASTRAL_LESSER	= "Lesser Astral Essence"
ESSENCE_ASTRAL_GREATER	= "Greater Astral Essence"
ESSENCE_MYSTIC_LESSER	= "Lesser Mystic Essence"
ESSENCE_MYSTIC_GREATER	= "Greater Mystic Essence"
ESSENCE_NETHER_LESSER	= "Lesser Nether Essence"
ESSENCE_NETHER_GREATER	= "Greater Nether Essence"
ESSENCE_ETERNAL_LESSER	= "Lesser Eternal Essence"
ESSENCE_ETERNAL_GREATER	= "Greater Eternal Essence"
ESSENCE_PLANAR_LESSER	= "Lesser Planar Essence"
ESSENCE_PLANAR_GREATER	= "Greater Planar Essence"
ESSENCE_COSMIC_LESSER	= "Lesser Cosmic Essence"
ESSENCE_COSMIC_GREATER	= "Greater Cosmic Essence"
ESSENCE_CELESTIAL_LESSER	= "Lesser Celestial Essence"
ESSENCE_CELESTIAL_GREATER	= "Greater Celestial Essence"

SHARD_GLIMMER_SMALL		= "Small Glimmering Shard"
SHARD_GLIMMER_LARGE		= "Large Glimmering Shard"
SHARD_GLOWING_SMALL		= "Small Glowing Shard"
SHARD_GLOWING_LARGE		= "Large Glowing Shard"
SHARD_RADIANT_SMALL		= "Small Radiant Shard"
SHARD_RADIANT_LARGE		= "Large Radiant Shard"
SHARD_BRILLIANT_SMALL	= "Small Brilliant Shard"
SHARD_BRILLIANT_LARGE	= "Large Brilliant Shard"
SHARD_PRISMATIC_SMALL	= "Small Prismatic Shard"
SHARD_PRISMATIC_LARGE	= "Large Prismatic Shard"
SHARD_DREAM_SMALL		= "Small Dream Shard"
SHARD_DREAM_LARGE		= "Dream Shard"
SHARD_HEAVENLY_SMALL	= "Small Heavenly Shard"
SHARD_HEAVENLY_LARGE	= "Heavenly Shard"

CRYSTAL_NEXUS	= "Nexus Crystal"
CRYSTAL_VOID	= "Void Crystal"
CRYSTAL_ABYSS	= "Abyss Crystal"
CRYSTAL_MAELSTROM	= "Maelstrom Crystal"


if ( GetLocale() == "deDE" ) then

	FDP_ALWAYS_DIS_TO_FORMAT = "Wird immer zu %s entzaubert."
	FDP_CAN_DIS_TO = "Kann entzaubert werden zu:"

	FDP_MOST_LIKELY = "(sehr wahrscheinlich)"   	-- chance of getting dust from any green
	FDP_JUST_LIKELY = "(wahrscheinlich)"	    	-- chance of getting essence from a green weapon
	FDP_OCCASIONALLY = "(gelegentlich)"	--     chance of getting essence from any other green
	FDP_RARELY = "(kaum)"				-- chance of getting a shard from any green

	FDP_CAN_DIS_FROM_FORMAT = "Kann von Items des Levels %s entzaubert werden."
	FDP_SHARD_VERBOSE = "Wird immer von blauen oder besseren Items entzaubert, kaum von grünen Items."
	FDP_ESSENCE_VERBOSE = "Wird öfters von grünen Waffen entzaubert, ab und zu von anderen grünen Items."
	FDP_DUST_VERBOSE = "Wird häufig von jedem grünen Item entzaubert."

	FDP_CANT_DIS_QUALITY_FORMAT = "%s meist kann es nicht entzaubert werden (nur in grüner oder besserer Qualität können es)."
	FDP_CANT_DIS_TYPE_FORMAT = "%s möglicherweise nicht entzauberbar. (Hauptsächlich nur anlegbare, nichtstapelbare Items.)"

	FDP_NOLEVEL_BLUE_FORMAT = "%s hat keine Levelerfordernis, es wird ein Splitter beim entzaubern produziert, aber ich kann nicht vorraussagen was. (Das ist wahrscheinlich ein Quest-Reward Item und so ist es wahrscheinlich, dass die Entzauberung das gleiche Level hat wie die Quest.)"
	FDP_NOLEVEL_GREEN_FORMAT = "%s hat keine Levelerfordernis; Ich kann nicht vorraussagen, welche Art von Staub/Essenz/Splitter beim entzaubern produziert wird. (Das ist wahrscheinlich ein Quest-Reward Item und so ist es wahrscheinlich, dass die Entzauberung das gleiche Level hat wie die Quest.)"
	FDP_GENERAL_WEAPON_RULE = "Es ist eine Waffe, dieses Item wird sehr wahrscheinlich zu einer Essenz entzaubert, nicht wie andere Items dieser Art. Staub ist sehr wahrscheinlich und Splitter sind rar."
	FDP_GENERAL_OTHER_RULE = "Staub ist wahrscheinlich, eine Essenz währe ungewöhnlich und Splitter wären rar."

	FDP_ITEM_DIS_BY_LEVEL_FORMAT = "Ein Item der Level %s kann entzaubert werden zu:"
	FDP_DUST_BY_LEVEL_INFO = "(wahrscheinlich grüne Items)"
	FDP_ESSENCE_BY_LEVEL_INFO = "(wahrscheinlich grüne Waffen, ab und zu andere grüne Items)"
	FDP_SHARD_BY_LEVEL_INFO = "(kaum grüne Items, immer blaue oder bessere)"

	-- Slash command errors
	FDP_BAIL_FORMAT = "Keine ermittelbaren Infos von %s."
	FDP_ERROR_ITEMLEVEL = "Item Levels muss zwischen 1 und 60 sein."
--	FDP_ERROR_ITEMID_FORMAT = "Can't determine item ID from %s."

	-- Special slash command components
	FDP_CMD_NUMBER = "<nummer>"
--	FDP_CMD_LINK = "<item link>"

	-- Slash command help
	FDP_HELP_HELP = "Diese Hilfeliste ausgeben."
	FDP_HELP_STATUS = "Aktuelle Einstellungen überprüfen/anzeigen."
	FDP_HELP_REAGENTS = "fügt eine Info zum Tooltipp der entzauberbaren Items hinzu (z.B. grüne Waffen). Zeigt in was sie entzaubert werden können."
	FDP_HELP_ITEMS = "fügt eine Info zum Tooltipp der Reagenzien hinzu (z.B. Seltsamer Staub). Zeigt von was sie entzaubert werden können."
	FDP_HELP_TOOLTIP = "stellt alle Tooltipp-MODS an oder aus."
	FDP_HELP_VERBOSE = "fügt eine Extrazeile zu den Tooltipps der entzauberten Reagenzien hinzu, zudem eine Erklärung wie man sie vom Entzaubern bekommt."
	FDP_HELP_NUMBER = "Zeige eine Entzauberungsinfo für Level <nummer> im Chat-Fenster."
--	FDP_HELP_LINK = "shift-click an item to see what it can disenchant to."

	-- Status returned from slash commands
	FDP_STATUS_REAGENTS_ON = "Zeige nun die EntzauberungsLevelRange in den Tooltipps der Reagenzien."
	FDP_STATUS_REAGENTS_OFF = "Füge nun keine Info zu den Tooltipps der Reagenzien hinzu."
	FDP_STATUS_ITEMS_ON = "Zeige nun die Entzauberungsvorhersage in den Tooltipps der zu entzaubernden Items."
	FDP_STATUS_ITEMS_OFF = "Füge nun keine Info zu den Tooltipps der zu entzaubernden Items hinzu."
	FDP_STATUS_TOOLTIP_ON = "Füge nun Infos zu den Tooltipps hinzu."
	FDP_STATUS_TOOLTIP_OFF = "Füge nun keine Infos zu den Tooltipps hinzu."
	FDP_STATUS_VERBOSE_ON = "Zeige nun auch mehrere spezifische Infos für bestimmte Reagenzien in den Tooltipps."
	FDP_STATUS_VERBOSE_OFF = "Zeige nun keine weiteren spezifischen Infos für Reagenzien."

	-- Dust names
	DUST_STRANGE	= "Seltsamer Staub"
	DUST_SOUL		= "Seelenstaub"
	DUST_VISION		= "Visionenstaub"
	DUST_DREAM		= "Traumstaub"
	DUST_ILLUSION	= "Illusionsstaub"
	DUST_ARCANE		= "Arkaner Staub"

	-- Essence names
	ESSENCE_MAGIC_LESSER	= "Geringe Magie-Essenz"
	ESSENCE_MAGIC_GREATER	= "Große Magie-Essenz"
	ESSENCE_ASTRAL_LESSER	= "Geringe Astral-Essenz"
	ESSENCE_ASTRAL_GREATER	= "Große Astral-Essenz"
	ESSENCE_MYSTIC_LESSER	= "Geringe Mystikeressenz"
	ESSENCE_MYSTIC_GREATER	= "Große Mystikeressenz"
	ESSENCE_NETHER_LESSER	= "Geringe Nether-Essenz"
	ESSENCE_NETHER_GREATER	= "Große Nether-Essenz"
	ESSENCE_ETERNAL_LESSER	= "Geringe ewige Essenz"
	ESSENCE_ETERNAL_GREATER	= "Große ewige Essenz"
	ESSENCE_PLANAR_LESSER	= "Geringe Planaressenz"
	ESSENCE_PLANAR_GREATER	= "Große Planaressenz"

	-- Shard names
	SHARD_GLIMMER_SMALL		= "Kleiner gleißender Splitter"
	SHARD_GLIMMER_LARGE		= "Großer gleißender Splitter"
	SHARD_GLOWING_SMALL		= "Kleiner leuchtender Splitter"
	SHARD_GLOWING_LARGE		= "Großer leuchtender Splitter"
	SHARD_RADIANT_SMALL		= "Kleiner strahlender Splitter"
	SHARD_RADIANT_LARGE		= "Großer strahlender Splitter"
	SHARD_BRILLIANT_SMALL	= "Kleiner glänzender Splitter"
	SHARD_BRILLIANT_LARGE	= "Großer glänzender Splitter"
	SHARD_PRISMATIC_SMALL	= "Kleiner Prismasplitter"
	SHARD_PRISMATIC_LARGE	= "Großer Prismasplitter"
	
	CRYSTAL_NEXUS	= "Nexuskristall"
	CRYSTAL_VOID	= "Kristall der Leere"

end

if ( GetLocale() == "esES" or GetLocale() == "esMX") then

	FDP_CAN_DIS_TO = "Se desencanta en:"

	FDP_MOST_LIKELY = "(muy probablemente)"		-- chance of getting dust from any green
	FDP_JUST_LIKELY = "(probablemente)"			-- chance of getting essence from a green weapon
	FDP_OCCASIONALLY = "(ocasionalmente)"		-- chance of getting essence from any other green
	FDP_RARELY = "(raramente)"					-- chance of getting a shard from any green

	FDP_CAN_DIS_FROM_FORMAT = "Se obtiene de desencantar objetos de %s ."
	FDP_LEVEL_FORMAT = "nivel %s"
	FDP_LOWER = "bajo nivel"
	FDP_HIGHER = "alto nivel"

	FDP_CRYSTAL_VERBOSE = "Siempre se obtiene de objetos de calidad |cffa335eeÉpica|r,\na veces de calidad |cff0070ddRara|r."
	FDP_SHARD_VERBOSE = "Siempre se obtiene de objetos de calidad |cff0070ddRara|r,\na veces de calidad |cff1eff00Poco común|r."
	FDP_ESSENCE_VERBOSE = "Se obiene de cualquier objeto |cff1eff00Poco común|r,\nmás a menudo de armas que de otro tipo."
	FDP_DUST_VERBOSE = "Se obtiene frecuentemente de cualquier objeto |cff1eff00Poco común|r."

	FDP_CANT_DIS_QUALITY_FORMAT = "%s probablemente no pueda desencantarse (solo objetos de calidad |cff1eff00Poco común|r, |cff0070ddRara|r, or |cffa335eeÉpica|r)."
	FDP_CANT_DIS_TYPE_FORMAT = "%s probablemente no pueda desencantarse (solo objetos no apilables que pueden ser equipados)."

	FDP_ITEM_DIS_BY_LEVEL_FORMAT = "Un objeto de nivel %s se puede desencantar en:"
	FDP_DUST_BY_LEVEL_INFO = "(probable de objetos verdes)"
	FDP_ESSENCE_BY_LEVEL_INFO = "(probable de armas verdes, ocasionalmente de otros objetos verdes)"
	FDP_SHARD_BY_LEVEL_INFO = "(raramente de objetos verdes, siempre de objetos azules o mejores)"

	FDP_DISENCHANTING_STATUS = "Desencantando %s..."
	FDP_DISENCHANTING_DEBUG = "Desencantando %s (iLvl %d)..."

	-- Slash command errors
	FDP_BAIL_FORMAT = "No se puede determinar la información de desencantamiento de %s."
	FDP_ERROR_ITEMID_FORMAT = "No se puede determinar la ID de %s."

	-- Special slash command components
	FDP_CMD_LINK = "<enlace objeto>"

	-- Slash command help
	FDP_HELP_HELP = "Imprimir esta ayuda."
	FDP_HELP_LINK = "Shift-click sobre un objeto para ver en lo que puede ser desencantado."

	-- Status returned from slash commands
	FDP_STATUS_REAGENTS_ON = "Mostrando la procedencia en el tooltip de los reagentes de encantamiento."
	FDP_STATUS_REAGENTS_OFF = "No se añadirá información al tooltip de los reagentes de encantamiento."
	FDP_STATUS_ITEMS_ON = "Mostrando lo que resultaría de desencantar un objeto en su tooltip."
	FDP_STATUS_ITEMS_OFF = "No se añadirá información al tooltip de los objetos desencantables.."
	FDP_STATUS_TOOLTIP_ON = "Mostrando información en los tooltips."
	FDP_STATUS_TOOLTIP_OFF = "No se añadirá ninguna información a los tooltips."
	FDP_STATUS_VERBOSE_ON = "Mostrando información detallada sobre desencantamientos y reagentes."
	FDP_STATUS_VERBOSE_OFF = "No se añadirá información detallada sobre desencantamientos y reagentes."

	FDP_OPTIONS_GENERAL	= "Opciones generales"
	FDP_OPTIONS_PROFILE	= "Opciones de perfiles"

	FDP_OPTION_REAGENTS	= "Muestra la procedencia en los tooltips de los reagentes de encantamiento"
	FDP_OPTION_ITEMS	= "Muesta lo que resultaría de desencantar un objeto en su tooltip"
	FDP_OPTION_VERBOSE	= "Muestra información detallada sobre desencantamientos y reagentes"


	-- localized item names below here shouldn't be necessary
	-- we get the real names from the client, and try to make sure it has cached them
	-- but they're here as backups just in case.

	DUST_STRANGE	= "Polvo extraño"
	DUST_SOUL		= "Polvo de alma"
	DUST_VISION		= "Polvo de visión"
	DUST_DREAM		= "Polvo onírico"
	DUST_ILLUSION	= "Polvo de ilusión"
	DUST_ARCANE		= "Polvo Arcano"
	DUST_INFINITE	= "Polvo infinito"
	DUST_HYPNOTIC	= "Polvo hipnótico"

	ESSENCE_MAGIC_LESSER	= "Esencia mágica inferior"
	ESSENCE_MAGIC_GREATER	= "Esencia mágica superior"
	ESSENCE_ASTRAL_LESSER	= "Esencia astral inferior"
	ESSENCE_ASTRAL_GREATER	= "Esencia astral superior"
	ESSENCE_MYSTIC_LESSER	= "Esencia mística inferior"
	ESSENCE_MYSTIC_GREATER	= "Esencia mística superior"
	ESSENCE_NETHER_LESSER	= "Esencia abisal inferior"
	ESSENCE_NETHER_GREATER	= "Esencia abisal superior"
	ESSENCE_ETERNAL_LESSER	= "Esencia eterna inferior"
	ESSENCE_ETERNAL_GREATER	= "Esencia eterna superior"
	ESSENCE_PLANAR_LESSER	= "Esencia bidimensional inferior"
	ESSENCE_PLANAR_GREATER	= "Esencia bidimensional superior"
	ESSENCE_COSMIC_LESSER	= "Esencia cósmica inferior"
	ESSENCE_COSMIC_GREATER	= "Esencia cósmica superior"
	ESSENCE_CELESTIAL_LESSER	= "Esencia celestial inferior"
	ESSENCE_CELESTIAL_GREATER	= "Esencia celestial superior"

	SHARD_GLIMMER_SMALL		= "Fragmento con luz trémula pequeño"
	SHARD_GLIMMER_LARGE		= "Fragmento con luz trémula grande"
	SHARD_GLOWING_SMALL		= "Fragmento resplandeciente pequeño"
	SHARD_GLOWING_LARGE		= "Fragmento resplandeciente grande"
	SHARD_RADIANT_SMALL		= "Fragmento radiante pequeño"
	SHARD_RADIANT_LARGE		= "Fragmento radiante grande"
	SHARD_BRILLIANT_SMALL	= "Fragmento luminoso pequeño"
	SHARD_BRILLIANT_LARGE	= "Fragmento luminoso grande"
	SHARD_PRISMATIC_SMALL	= "Fragmento centelleante pequeño"
	SHARD_PRISMATIC_LARGE	= "Fragmento centelleante grande"
	SHARD_DREAM_SMALL		= "Fragmento onírico pequeño"
	SHARD_DREAM_LARGE		= "Fragmento onírico"
	SHARD_HEAVENLY_SMALL	= "Fragmento celestial pequeño"
	SHARD_HEAVENLY_LARGE	= "Fragmento celestial"

	CRYSTAL_NEXUS	= "Cristal nexo"
	CRYSTAL_VOID	= "Cristal de vacío"
	CRYSTAL_ABYSS	= "Cristal abisal"
	CRYSTAL_MAELSTROM	= "Cristal de La Vorágine"

end

if ( GetLocale() == "frFR" ) then

FDP_CAN_DIS_TO = "Désenchantement:"

FDP_MOST_LIKELY = "(le plus souvent)"
FDP_JUST_LIKELY = "(souvent)"
FDP_OCCASIONALLY = "(occasionnellement)"
FDP_RARELY = "(rarement)"

FDP_CAN_DIS_FROM_FORMAT = "Désenchanté depuis objets %s ."
FDP_LEVEL_FORMAT = "niveau %s"
FDP_LOWER = "bas niveau"
FDP_HIGHER = "haut niveau"

FDP_CRYSTAL_VERBOSE = "Toujours désenchanté depuis objets |cffa335eeEpique|r ,\nrarement depuis objets |cff0070ddRare|r ."
FDP_SHARD_VERBOSE = "Toujours désenchanté depuis objets |cff0070ddRare|r ,\nrarement depuis objets |cff1eff00Non commun|r ."
FDP_ESSENCE_VERBOSE = "Peut être désenchanté depuis tout objets |cff1eff00Non commun|r ,\nle plus souvent depuis les armes."
FDP_DUST_VERBOSE = "Fréquemment désenchanté depuis tout objets |cff1eff00Non commun|r ."

FDP_CANT_DIS_QUALITY_FORMAT = "%s le plus souvent ne peut être désenchanté (only items of |cff1eff00Uncommon|r, |cff0070ddRare|r, or |cffa335eeEpic|r quality can)."
FDP_CANT_DIS_TYPE_FORMAT = "%s le plus souvent ne peut être désenchanté. (Only non-stacking items which can be equipped on the Character window can.)"

FDP_ITEM_DIS_BY_LEVEL_FORMAT = "Un objet de niveau %s peut être désenchanté en:"
FDP_DUST_BY_LEVEL_INFO = "(souvent les objets vert)"
FDP_ESSENCE_BY_LEVEL_INFO = "(souvent les armes verte, occasionnellement les autres objets vert)"
FDP_SHARD_BY_LEVEL_INFO = "(rarement les objets vert, toujours les bleu ou meilleur objets)"

FDP_DISENCHANTING_STATUS = "Désenchantement %s..."
FDP_DISENCHANTING_DEBUG = "Désenchantement %s (ilvl %d)..."

-- Slash command errors
FDP_BAIL_FORMAT = "Ne peut pas déterminé le désenchantement depuis %s."
FDP_ERROR_ITEMID_FORMAT = "le plus souvent l'objet ID ne peut être désenchanté depuis %s."

-- Special slash command components
FDP_CMD_LINK = "<item link>"

-- Slash command help
FDP_HELP_HELP = "Imprime l'aide."
FDP_HELP_LINK = "shift-click sur l'objet pour voir le désenchantement."

-- Status returned from slash commands
FDP_STATUS_REAGENTS_ON = "Montrer le niveau des réactifs dans l'infobulle."
FDP_STATUS_REAGENTS_OFF = "Ne pas ajouter d'info sur les réactifs dans l'infobulle."
FDP_STATUS_ITEMS_ON = "Montrer les résultats du désenchantement dans l'infobulle."
FDP_STATUS_ITEMS_OFF = "Ne pas ajouter d'info pour les objets désenchantable dans l'infobulle."
FDP_STATUS_TOOLTIP_ON = "Ajouter info dans l'infobulle."
FDP_STATUS_TOOLTIP_OFF = "N'ajouter aucune info dans l'infobulle."
FDP_STATUS_VERBOSE_ON = "Montre aussi les info spécifiques au réactif dans l'infobulle."
FDP_STATUS_VERBOSE_OFF = "Ne pas monter les info spécifiques au réactif dans l'infobulle."

FDP_OPTIONS_GENERAL	= "Options Générale"
FDP_OPTIONS_PROFILE	= "Profil"

FDP_OPTION_REAGENTS	= "Montrer le niveau des réactifs dans l'infobulle"
FDP_OPTION_ITEMS	= "Montrer le résultat du désenchantement dans l'infobulle"
FDP_OPTION_VERBOSE	= "Montrer l'origine des réactifs et chance du désenchantement dans l'infobulle"



DUST_STRANGE	= "Poussière étrange"
DUST_SOUL		= "Poussière d'âme"
DUST_VISION		= "Poussière de vision"
DUST_DREAM		= "Poussière de rêve"
DUST_ILLUSION	= "Poussière d'illusion"
DUST_ARCANE		= "Poussière arcanique"
DUST_INFINITE	= "Poussière d'infini"
DUST_HYPNOTIC	= "Poussière hypnotique"

ESSENCE_MAGIC_LESSER	= "Essence magique inférieure"
ESSENCE_MAGIC_GREATER	= "Essence magique supérieure"
ESSENCE_ASTRAL_LESSER	= "Essence astrale inférieure"
ESSENCE_ASTRAL_GREATER	= "Essence astrale supérieure"
ESSENCE_MYSTIC_LESSER	= "Essence mystique inférieure"
ESSENCE_MYSTIC_GREATER	= "Essence mystique supérieure"
ESSENCE_NETHER_LESSER	= "Essence du néant inférieure"
ESSENCE_NETHER_GREATER	= "Essence du néant supérieure"
ESSENCE_ETERNAL_LESSER	= "Essence éternelle inférieure"
ESSENCE_ETERNAL_GREATER	= "Essence éternelle supérieure"
ESSENCE_PLANAR_LESSER	= "Essence planaire inférieure"
ESSENCE_PLANAR_GREATER	= "Essence planaire supérieure"
ESSENCE_COSMIC_LESSER	= "Essence cosmique inférieure"
ESSENCE_COSMIC_GREATER	= "Essence cosmique supérieure"
ESSENCE_CELESTIAL_LESSER	= "Essence céleste inférieure"
ESSENCE_CELESTIAL_GREATER	= "Essence céleste supérieure"

SHARD_GLIMMER_SMALL		= "Petit éclat scintillant"
SHARD_GLIMMER_LARGE		= "Grand éclat scintillant"
SHARD_GLOWING_SMALL		= "Petit éclat lumineux"
SHARD_GLOWING_LARGE		= "Grand éclat lumineux"
SHARD_RADIANT_SMALL		= "Petit éclat irradiant"
SHARD_RADIANT_LARGE		= "Grand éclat irradiant"
SHARD_BRILLIANT_SMALL	= "Petit éclat brillant"
SHARD_BRILLIANT_LARGE	= "Grand éclat brillant"
SHARD_PRISMATIC_SMALL	= "Petit éclat Prismatique"
SHARD_PRISMATIC_LARGE	= "Grand éclat Prismatique"
SHARD_DREAM_SMALL		= "Petit éclat de rêve"
SHARD_DREAM_LARGE		= "Eclat de rêve"
SHARD_HEAVENLY_SMALL	= "Petit éclat des cieux"
SHARD_HEAVENLY_LARGE	= "Eclat des cieux"

CRYSTAL_NEXUS	= "Cristal de nexus"
CRYSTAL_VOID	= "Cristal du vide"
CRYSTAL_ABYSS	= "Cristal abyssal"
CRYSTAL_MAELSTROM	= "Cristal du maelström"

end

if ( GetLocale() == "koKR" ) then

FDP_CAN_DIS_TO = "마력 추출 :"

FDP_MOST_LIKELY = "(대부분)"		-- chance of getting dust from any green
FDP_JUST_LIKELY = "(자주)"		-- chance of getting essence from a green weapon
FDP_OCCASIONALLY = "(가끔)"		-- chance of getting essence from any other green
FDP_RARELY = "(드물게)"			-- chance of getting a shard from any green

FDP_CAN_DIS_FROM_FORMAT = "%s 아이템에서 추출 가능."
FDP_LEVEL_FORMAT = "레벨 %s"
FDP_LOWER = "하급 "
FDP_HIGHER = "상급 "

FDP_CRYSTAL_VERBOSE = "대부분 |cffa335ee영웅|r 아이템에서,\n드물게 |cff0070dd희귀|r 아이템에서 추출 가능."
FDP_SHARD_VERBOSE = "대부분 |cff0070dd희귀|r 아이템에서,\n드물게 |cff1eff00고급|r 아이템에서 추출 가능."
FDP_ESSENCE_VERBOSE = "아무 |cff1eff00고급|r 아이템에서 추출 가능,\n다른 종류보다 무기에서 더 추출할 가능성이 있음."
FDP_DUST_VERBOSE = "|cff1eff00고급|r 아이템에서 빈번하게 추출 가능."

FDP_CANT_DIS_QUALITY_FORMAT = "%s|1은;는; 대부분 마력 추출을 할 수 없음. (|cff1eff00고급|r, |cff0070dd희귀|r 또는 |cffa335ee영웅|r 품질의 아이템만 가능)."
FDP_CANT_DIS_TYPE_FORMAT = "%s|1은;는; 대부분 마력 추출을 할 수 없음. (캐릭터 창에 착용될 수 있는 오로지 겹쳐지지 않는 아이템만 가능.)"

FDP_ITEM_DIS_BY_LEVEL_FORMAT = "%s 레벨 아이템의 마력 추출 정보: "
FDP_DUST_BY_LEVEL_INFO = "(|cff1eff00고급|r 아이템에서 추출)"
FDP_ESSENCE_BY_LEVEL_INFO = "(|cff1eff00고급|r 무기, 가끔 |cff1eff00고급|r 방어구에서 추출)"
FDP_SHARD_BY_LEVEL_INFO = "(드물게 |cff1eff00고급|r, 대부분 |cff0070dd희귀|r 혹은 그 이상에서 추출)"

FDP_DISENCHANTING_STATUS = "%s 마력 추출중..."
FDP_DISENCHANTING_DEBUG = "%s 마력 추출중(아이템레벨 %d)..."

-- Slash command errors
FDP_BAIL_FORMAT = "%s에서 마력 추출 정보를 결정할 수 없음."
FDP_ERROR_ITEMID_FORMAT = "%s에서 아이템ID를 결정할 수 없음."

-- Special slash command components
FDP_CMD_LINK = "<아이템 링크>"

-- Slash command help
FDP_HELP_HELP = "도움말 출력."
FDP_HELP_LINK = "쉬프트-클릭으로 마력 추출을 하려는 아이템을 확인함."

-- Status returned from slash commands
FDP_STATUS_REAGENTS_ON = "마법부여 재료의 툴팁에 추출 가능 레벨의 범위 표시."
FDP_STATUS_REAGENTS_OFF = "마법부여 재료의 툴팁에 정보 표시하지 않음."
FDP_STATUS_ITEMS_ON = "마력 추출 가능한 아이템의 툴팁에 예상 추출정보 표시."
FDP_STATUS_ITEMS_OFF = "마력 추출 가능한 아이템의 툴팁에 정보 표시하지 않음."
FDP_STATUS_TOOLTIP_ON = "툴팁에 정보 표시."
FDP_STATUS_TOOLTIP_OFF = "툴팁에 정보 표시하지 않음."
FDP_STATUS_VERBOSE_ON = "마법부여 재료의 툴팁에 추출 방법 설명."
FDP_STATUS_VERBOSE_OFF = "마법부여 재료의 툴팁에 추출 방법 설명하지 않음."

FDP_OPTION_REAGENTS	= "마법부여 재료들을 기본 툴팁에 표시"
FDP_OPTION_ITEMS	= "아이템 툴팁에 마력 추출 시 예상 재료 표시"
FDP_OPTION_VERBOSE	= "재료/마력 추출 정보 상세하게 표시"

DUST_STRANGE	= "이상한 가루"
DUST_SOUL		= "영혼 가루"
DUST_VISION		= "환상 가루"
DUST_DREAM		= "꿈가루"
DUST_ILLUSION	= "환영 가루"
DUST_ARCANE		= "신비한 수정 가루"
DUST_INFINITE	= "무한의 가루"

ESSENCE_MAGIC_LESSER	= "하급 마법의 정수"
ESSENCE_MAGIC_GREATER	= "상급 마법의 정수"
ESSENCE_ASTRAL_LESSER	= "하급 별의 정수"
ESSENCE_ASTRAL_GREATER	= "상급 별의 정수"
ESSENCE_MYSTIC_LESSER	= "하급 신비의 정수"
ESSENCE_MYSTIC_GREATER	= "상급 신비의 정수"
ESSENCE_NETHER_LESSER	= "하급 황천의 정수"
ESSENCE_NETHER_GREATER	= "상급 황천의 정수"
ESSENCE_ETERNAL_LESSER	= "하급 영원의 정수"
ESSENCE_ETERNAL_GREATER	= "상급 영원의 정수"
ESSENCE_PLANAR_LESSER	= "하급 차원의 정수"
ESSENCE_PLANAR_GREATER	= "상급 차원의 정수"
ESSENCE_COSMIC_LESSER	= "하급 우주의 정수"
ESSENCE_COSMIC_GREATER	= "상급 우주의 정수"

SHARD_GLIMMER_SMALL		= "희미하게 빛나는 작은 결정"
SHARD_GLIMMER_LARGE		= "희미하게 빛나는 큰 결정"
SHARD_GLOWING_SMALL		= "붉게 빛나는 큰 결정"
SHARD_GLOWING_LARGE		= "붉게 빛나는 작은 결정"
SHARD_RADIANT_SMALL		= "찬란하게 빛나는 작은 결정"
SHARD_RADIANT_LARGE		= "찬란하수게 빛나는 큰 결정"
SHARD_BRILLIANT_SMALL	= "눈부신 작은 결정"
SHARD_BRILLIANT_LARGE	= "눈부신 큰 결정"
SHARD_PRISMATIC_SMALL	= "무지갯빛 작은 결정"
SHARD_PRISMATIC_LARGE	= "무지갯빛 큰 결"
SHARD_DREAM_SMALL		= "작은 꿈의 결정"
SHARD_DREAM_LARGE		= "꿈의 결정"

CRYSTAL_NEXUS	= "마력의 결정체"
CRYSTAL_VOID	= "공허의 수정"
CRYSTAL_ABYSS	= "심연의 수정"

end

if ( GetLocale() == "zhTW" ) then
--zhTW by Katun
FDP_ALWAYS_DIS_TO_FORMAT     = "通常分解成為 %s"
FDP_CAN_DIS_TO               = "可能分解成為:"
FDP_CAN_DIS_TO_SHORT         = "分解成為:"

FDP_MOST_LIKELY              = "(經常)"
FDP_JUST_LIKELY              = "(可能)"
FDP_OCCASIONALLY             = "(偶爾)"
FDP_RARELY                   = "(罕見)"

FDP_CAN_DIS_FROM_FORMAT      = "可以從 %s 級的物品分解到"
FDP_CRYSTAL_VERBOSE          = "一般由|cffa335ee紫色物品|r分解出，極少情況由|cff0070dd藍色物品|r得到"
FDP_SHARD_VERBOSE            = "一般由|cff0070dd藍色物品|r分解出，極少情況由|cff1eff00綠色物品|r得到"
FDP_ESSENCE_VERBOSE          = "一般由|cff1eff00綠色武器|r分解出，偶爾由其他|cff1eff00綠色物品|r得到"
FDP_DUST_VERBOSE             = "經常由|cff1eff00綠色物品|r分解出"

FDP_CANT_DIS_QUALITY_FORMAT  = "%s 似乎不能被分解。(只有|cff1eff00綠色|r, |cff0070dd藍色|r, 或|cffa335ee紫色|r物品才可以分解出來)"
FDP_CANT_DIS_TYPE_FORMAT     = "%s 似乎不能被分解。(通常只有可以裝備且不能疊放的物品可以分解)"

FDP_ITEM_DIS_BY_LEVEL_FORMAT = "一個 %s 級的物品可以被分解成:"
FDP_DUST_BY_LEVEL_INFO       = "(通常為綠色物品)"
FDP_ESSENCE_BY_LEVEL_INFO    = "(通常為綠色武器，偶爾為其他綠色物品)"
FDP_SHARD_BY_LEVEL_INFO      = "(極少為綠色物品，通常為藍色或更好的物品)"

-- Slash command errors
FDP_BAIL_FORMAT              = "無法確認 %s 的分解特性"
FDP_ERROR_ITEMLEVEL          = "物品級別應該在1到60之間"
FDP_ERROR_ITEMID_FORMAT      = "不能確定 %s 的物品編碼"

-- Special slash command components
FDP_CMD_NUMBER               = "<物品級別>"
FDP_CMD_LINK                 = "<物品鏈接>"

-- Slash command help
FDP_HELP_HELP                = "顯示幫助"
FDP_HELP_STATUS              = "檢查當前設置"
FDP_HELP_REAGENTS            = "顯示附魔材料的來源提示"
FDP_HELP_ITEMS               = "顯示物品分解產物的提示"
FDP_HELP_TOOLTIP             = "開啟/關閉提示信息"
FDP_HELP_VERBOSE             = "顯示附魔材料來源的額外信息"
FDP_HELP_AUTOLOOT            = "分解後自動拾取並關閉拾取窗口"
FDP_HELP_NUMBER              = "顯示這個級別的物品之分解產物"
FDP_HELP_LINK                = "使用shift+點擊物品鏈接 查看預測分解產物"

-- Status returned from slash commands
FDP_STATUS_REAGENTS_ON       = "顯示附魔材料的提示信息"
FDP_STATUS_REAGENTS_OFF      = "關閉附魔材料的提示信息"
FDP_STATUS_ITEMS_ON          = "顯示可分解物品的提示信息"
FDP_STATUS_ITEMS_OFF         = "關閉可分解物品的提示信息"
FDP_STATUS_TOOLTIP_ON        = "顯示提示功能"
FDP_STATUS_TOOLTIP_OFF       = "關閉提示功能"
FDP_STATUS_VERBOSE_ON        = "顯示附魔材料的特殊提示"
FDP_STATUS_VERBOSE_OFF       = "關閉附魔材料的特殊提示"
FDP_STATUS_AUTOLOOT_ON       = "分解後自動拾取並關閉拾取窗口"
FDP_STATUS_AUTOLOOT_OFF      = "拾取窗口必需手動關閉"

-- Dust names
DUST_STRANGE		= "奇異之塵"
DUST_SOUL		= "靈魂之塵"
DUST_VISION		= "幻象之塵"
DUST_DREAM		= "夢境之塵"
DUST_ILLUSION		= "幻影之塵"
DUST_ARCANE		= "魔塵"

-- Essence names
ESSENCE_MAGIC_LESSER	= "次級魔法精華"
ESSENCE_MAGIC_GREATER	= "強效魔法精華"
ESSENCE_ASTRAL_LESSER	= "次級星界精華"
ESSENCE_ASTRAL_GREATER	= "強效星界精華"
ESSENCE_MYSTIC_LESSER	= "次級秘法精華"
ESSENCE_MYSTIC_GREATER	= "強效秘法精華"
ESSENCE_NETHER_LESSER	= "次級虛空精華"
ESSENCE_NETHER_GREATER	= "強效虛空精華"
ESSENCE_ETERNAL_LESSER	= "次級不滅精華"
ESSENCE_ETERNAL_GREATER	= "強效不滅精華"
ESSENCE_PLANAR_LESSER	= "次級星面精華"
ESSENCE_PLANAR_GREATER	= "強效星面精華"

-- Shard names
SHARD_GLIMMER_SMALL	= "小塊微光碎片"
SHARD_GLIMMER_LARGE	= "大塊微光碎片"
SHARD_GLOWING_SMALL	= "小塊閃光碎片"
SHARD_GLOWING_LARGE	= "大塊閃光碎片"
SHARD_RADIANT_SMALL	= "小塊強光碎片"
SHARD_RADIANT_LARGE	= "大塊強光碎片"
SHARD_BRILLIANT_SMALL	= "小塊魔光碎片"
SHARD_BRILLIANT_LARGE	= "大塊魔光碎片"
SHARD_PRISMATIC_SMALL	= "小塊棱石碎片"
SHARD_PRISMATIC_LARGE	= "大塊棱石碎片"

CRYSTAL_NEXUS	= "聯結水晶"
CRYSTAL_VOID	= "虛空水晶"

end

if ( GetLocale() == "zhCN" ) then
--zhTW by 月之小小@1区 库德兰 联盟 
FDP_ALWAYS_DIS_TO_FORMAT     = "总是分解成为 %s"
FDP_CAN_DIS_TO               = "可能分解成为:"
FDP_CAN_DIS_TO_SHORT         = "分解成为:"
FDP_MOST_LIKELY              = "(经常)"
FDP_JUST_LIKELY              = "(可能)"
FDP_OCCASIONALLY             = "(偶尔)"
FDP_RARELY                   = "(罕见)"
FDP_CAN_DIS_FROM_FORMAT      = "可以从 %s 級的物品分解到"
FDP_CRYSTAL_VERBOSE          = "一般由|cffa335ee紫色物品|r分解出，极少情況由|cff0070dd蓝色物品|r得到"
FDP_SHARD_VERBOSE            = "一般由|cff0070dd蓝色物品|r分解出，极少情況由|cff1eff00绿色物品|r得到"
FDP_ESSENCE_VERBOSE          = "一般由|cff1eff00绿色武器|r分解出，偶尔由其他|cff1eff00绿色物品|r得到"
FDP_DUST_VERBOSE             = "经常由|cff1eff00绿色物品|r分解出"
FDP_CANT_DIS_QUALITY_FORMAT  = "%s 似乎不能被分解。(只有|cff1eff00绿色|r, |cff0070dd蓝色|r, 或|cffa335ee紫色|r物品才可以分解出來)"
FDP_CANT_DIS_TYPE_FORMAT     = "%s 似乎不能被分解。(通常只有可以装备且不能叠放的物品可以分解)"
FDP_ITEM_DIS_BY_LEVEL_FORMAT = "一个 %s 級的物品可以被分解成:"
FDP_DUST_BY_LEVEL_INFO       = "(通常为绿色物品)"
FDP_ESSENCE_BY_LEVEL_INFO    = "(通常为绿色武器，偶尔为其他绿色物品)"
FDP_SHARD_BY_LEVEL_INFO      = "(极少为绿色物品，通常为蓝色或更好的物品)"
FDP_DISENCHANTING_STATUS	 = "正在分解 %s..."
-- Slash command errors
FDP_BAIL_FORMAT              = "无法确认 %s 的分解特性"
FDP_ERROR_ITEMLEVEL          = "物品级别应该在1到70之间"
FDP_ERROR_ITEMID_FORMAT      = "不能确定 %s 的物品编码"
-- Special slash command components
FDP_CMD_NUMBER               = "<物品级別>"
FDP_CMD_LINK                 = "<物品链接>"
-- Slash command help
FDP_HELP_HELP                = "显示帮助"
FDP_HELP_STATUS              = "检查当前设置"
FDP_HELP_REAGENTS            = "显示附魔材料的來源提示"
FDP_HELP_ITEMS               = "显示物品分解产物的提示"
FDP_HELP_TOOLTIP             = "开启/关闭提示信息"
FDP_HELP_VERBOSE             = "显示附魔材料来源的额外信息"
FDP_HELP_AUTOLOOT            = "分解后自动拾取并关闭拾取窗口"
FDP_HELP_NUMBER              = "显示这个级別的物品之分解产物"
FDP_HELP_LINK                = "使用shift+点击物品链接 查看预测分解产物"
-- Status returned from slash commands
FDP_STATUS_REAGENTS_ON       = "显示附魔材料的提示信息"
FDP_STATUS_REAGENTS_OFF      = "关闭附魔材料的提示信息"
FDP_STATUS_ITEMS_ON          = "显示可分解物品的提示信息"
FDP_STATUS_ITEMS_OFF         = "关闭可分解物品的提示信息"
FDP_STATUS_TOOLTIP_ON        = "显示提示功能"
FDP_STATUS_TOOLTIP_OFF       = "关闭提示功能"
FDP_STATUS_VERBOSE_ON        = "显示附魔材料的特殊提示"
FDP_STATUS_VERBOSE_OFF       = "关闭附魔材料的特殊提示"
FDP_STATUS_AUTOLOOT_ON       = "分解后自动拾取并关闭拾取窗口"
FDP_STATUS_AUTOLOOT_OFF      = "拾取窗口必须手动关闭"
-- Dust names
DUST_STRANGE = "奇异之尘"
DUST_SOUL  = "灵魂之尘"
DUST_VISION  = "幻象之尘"
DUST_DREAM  = "梦境之尘"
DUST_ILLUSION = "幻影之尘"
DUST_ARCANE  = "奥法之尘"
-- Essence names
ESSENCE_MAGIC_LESSER = "次级魔法精华"
ESSENCE_MAGIC_GREATER = "强效魔法精华"
ESSENCE_ASTRAL_LESSER = "次级星界精华"
ESSENCE_ASTRAL_GREATER = "强效星界精华"
ESSENCE_MYSTIC_LESSER = "次级秘法精华"
ESSENCE_MYSTIC_GREATER = "强效秘法精华"
ESSENCE_NETHER_LESSER = "次级虚空精华"
ESSENCE_NETHER_GREATER = "强效虚空精华"
ESSENCE_ETERNAL_LESSER = "次级不灭精华"
ESSENCE_ETERNAL_GREATER = "强效不灭精华"
ESSENCE_PLANAR_LESSER = "次级位面精华"
ESSENCE_PLANAR_GREATER = "强效位面精华"
-- Shard names
SHARD_GLIMMER_SMALL  = "小块微光碎片"
SHARD_GLIMMER_LARGE  = " 大块微光碎片"
SHARD_GLOWING_SMALL  = "小块闪光碎片"
SHARD_GLOWING_LARGE  = "大块闪光碎片"
SHARD_RADIANT_SMALL  = "小块强光碎片"
SHARD_RADIANT_LARGE  = "大块强光碎片"
SHARD_BRILLIANT_SMALL = "小块魔光碎片"
SHARD_BRILLIANT_LARGE = "大块魔光碎片"
SHARD_PRISMATIC_SMALL = "小块棱光碎片"
SHARD_PRISMATIC_LARGE = "大块棱光碎片"
CRYSTAL_NEXUS = "连结水晶"
CRYSTAL_VOID = "虚空水晶"
end
