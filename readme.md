\---

Fizzwidget Disenchant Predictor
by Gazmik Fizzwidget
http://fizzwidget.com/disenchantpredictor
gazmik@fizzwidget.com
---

Enchanters: have you ever tried to accumulate reagents for your latest formula and come away feeling... well, disenchanted? Got Strange Dust when you really wanted Soul? Is that Brilliant Shard just not large enough to satisfy? Suffer no more! Through countless hours of research, I've discovered the scientific laws governing the mystic composition of enchanted items. I just *had* to build a gadget to make use of this knowledge.

My latest invention will help you make sure you always disenchant the right stuff to get the shards, dusts, or essences you need.  Simply point it at any such reagent -- or even the reagent requirements listed in your formula book -- and you'll see an instant readout showing what types of items it can be disenchanted from. No more guesswork!\*

* Due to fluctuations in the astral plane, disenchanting some items produces variable results. No one can predict for certain whether you'll get a pile of dust, an essence, or a shard, but thanks to my invention you'll at least know what variety of dust, kind and potency of essence, or luster and size of shard can be produced.

\---

INSTALLATION: Put the GFW\_DisenchantPredictor folder into your World Of Warcraft/Interface/AddOns folder and launch WoW.

USAGE:
- By default, reagents produced by disenchanting items (a dust, essence, or shard) will show two new lines of information in their tooltips: the first shows which levels of items can be disenchanted to produce the reagent, and the second provides additional info on which types of items are more or less likely to produce the reagent.
- Disenchantable items will also show information in their tooltip predicting which types of dust, essence, or shard they can disenchant into.
- Also, you can use a chat command to check which types of dust, essence, and shard can be disenchanted from an item by inserting a chat link or typing its level requirement (see below).

CHAT COMMANDS:
/enchant (or /ench or /disenchant or /dis or /de or /dp) <command>
where <command> can be any of the following:
help - Print this list.
status - Check current settings.
<item link> - Shift-click an item to insert a link and get disenchant or reagent source information.

CAVEATS, KNOWN BUGS, ETC.:
- Disenchant Predictor bases its predictions on common "rules" for item disenchants... but not all items that fit these "rules" are disenchantable. (Notable exceptions include PvP rewards and certain quest-related items.) Disenchant Predictor keeps a database of several known exceptions, but it may not always be complete -- the presence of disenchant info in an item's tooltip shouldn't be taken as a reliable indicator of whether an item can be disenchanted.

\---

VERSION HISTORY

v. 6.0

* Added support for WoW: Forever

v. 5.2 - 2013/03/05

* Updated TOC to indicate compatibility with WoW Patch 5.2.

v. 5.1 - 2012/12/19

* Updated TOC to indicate compatibility with WoW Patch 5.1.
* Fixed an issue where reagents could appear in the tooltip with "gibberish" codes before their names.

v. 5.0.2 - 2012/08/30

* Fixed a "blocked action" error when applying glyphs since WoW Patch 5.0.

v. 5.0.1 - 2012/08/29

* Fixed an error when disenchanting since WoW Patch 5.0.

v. 5.0 - 2012/08/28

* Updated for WoW Patch 5.0 and Mists of Pandaria. (Disenchant tables for Mists of Pandaria items are approximate; please report any incorrect predictions.)
* Fixed incorrect predictions for Greater vs Lesser Cataclysm essences from ilevel 306-311 greens.
* We no longer keep track of a list of non-disenchantable items (those which are green or better but which the game forbids disenchanting; e.g. vendor-purchased PvP gear), as keeping the list up to date proved infeasible. Disenchant Predictor may thus show disenchant reagents for items which the game forbids disenchanting (though it will still remember which items are non-disenchantable once it sees them so identified in-game).
* Updated French localization by Xalenader.

v. 4.3 - 2011/11/29

* Updated TOC to indicate compatibility with WoW Patch 4.3.

v. 4.2 - 2011/06/28

* Updated TOC to indicate compatibility with WoW Patch 4.2.
* Options now default to being shared across all characters; see the Options Profile panel if you'd prefer per-character, per-server, or per-class settings. (This change may not take effect if you already have saved options; choose the Default options profile if you'd prefer this behavior.)

v. 4.1 - 2011/04/26

* Updated TOC to indicate compatibility with WoW Patch 4.1.
* Adjusted disenchant information for Cataclysm greens (re: Lesser vs. Greater Celestial Essence).
* Includes Spanish localization by PatoDaia.

v. 4.0.2 - 2011/02/23

* Adjusted Cataclysm disenchant rates for Uncommon items to match recent patch/hotfix changes.

v. 4.0.1 - 2010/12/12

* Includes disenchant information for Cataclysm items (and fixes related errors).
* Fixes some incorrectly reported disenchant information for other items, including frequency of essence/dust from armor vs weapons.

v. 4.0 - 2010/10/11

* Updated for compatibility with WoW Patch 4.0.1 (and Cataclysm Beta).
* NOTE: Disenchant information for high-level Cataclysm items is not yet available; this will be added in a future update around the release of Cataclysm.

v. 3.3.1 - 2010/04/05

* Fixed an error which could sometimes appear when disenchanting items.

v. 3.3 - 2009/12/08

* Updated TOC to indicate compatibility with WoW Patch 3.3.

v. 3.2 - 2009/08/04

* Updated TOC to indicate compatibility with WoW Patch 3.2.

v. 3.1 - 2009/04/18

* Updated TOC to indicate compatibility with WoW Patch 3.1.
* Now uses Ace3 library for saved settings and options UI (any previously saved preferences will be reset to default).

v. 3.0.2 - 2009/01/29

* Fixed an issue where preferences could fail to be saved between sessions.
* Updated Korean localization from 'chkid'.

v. 3.0.1 - 2008/10/15

* Fixed an issue that could cause disconnects when mousing over items.

v. 3.0 - 2008/10/14

* Updated for compatibility with WoW Patch 3.0 and Wrath of the Lich King.
* Tooltips for reagents now use an inline graphic to indicate which expansion's items they disenchant from.
* Includes preliminary data to support predicting disenchants for Wrath items:

  * We don't yet have enough data to predict all Wrath disenchants. Disenchant Predictor will show details in the chat window if you disenchant something that doesn't match its expectations -- send them in so future releases can be more accurate!
  * In Wrath content, there's no longer a correlation between items' required level seen in-game and the internal item level that determines disenchant results. So, tooltips for Lesser/Greater Cosmic Essence and Small/Large Dream Shards can only say "disenchants from lower/higher level Wrath items".
* Removed the Auto Loot option, as the one built into WoW works for Disenchanting now.
* Now uses the Interface Options panel for configuration.

v. 2.4 - 2008/03/24

* Updated TOC to indicate compatibility with WoW Patch 2.4.
* Updated German localization by "Zara".

v. 2.3 - 2007/11/13

* Updated TOC to indicate compatibility with WoW Patch 2.3.

v. 2.2.1 - 2007/10/12

* Fixed autoloot option to work again following WoW Patch 2.2.
* Corrected disenchant source text on tooltips for Burning Crusade reagents.
* Fixed an issue where we could lose track of what your'e currently disenchanting if the cast was interrrupted.
* We now check for whether a disenchant comes out as predicted regardless of whether the autoloot option is turned on.
* The autoloot option also controls whether the "Disenchanting \[item]..." text appears in the chat window.
* Added Simplified Chinese localization by Colin Cao and Traditional Chinese localization by Katun.

v. 2.2 - 2007/09/25

* Updated TOC to indicate compatibility with WoW Patch 2.2.

v. 2.1.1 - 2007/07/20

* Refined disenchant tables for shards and crystals produced by high-level items; all should be correctly predicted now.
* Updated the list of non-disenchantable items.
* Uses a simpler, more reliable means of hooking item tooltips.
* Added support for the Ace \[AddonLoader]\[] -- when that addon is present, Disenchant Predictor will load in the background shortly after login (reducing initial load time).
\[AddonLoader]: http://www.wowace.com/wiki/AddonLoader

v. 2.1 - 2007/05/22

* Updated TOC for WoW Patch 2.1.
* Fixed an issue with tracking disenchants: we should no longer get confused if the casting of "Disenchant" is interrupted.

v. 2.0.4 - 2007/02/17

* ItemLevel 100 blue items disenchant to \[Large Prismatic Shard] instead of Small, breaking the normal pattern. Our predictions now account for this.
* Fixed some issues with hooking tooltips when other tooltip-modifying addons are present.

v. 2.0.3 - 2007/01/14

* Updated for compatibility with WoW Patch 2.0.3 and the Burning Crusade release.
* Refined disenchant tables a bit for high-level items: blue items from ZG and AQ20 should now be predicted correctly.
* Simplified code for adding text to item tooltips thanks to new API in WoW 2.0.3 -- this should fix issues with the same info being added to a tooltip multiple times or sometimes being missing, as well as allow us to work with more third-party addons that show item tooltips.

v. 2.0.2 - 2006/12/08

* Fixed error (introduced in 2.0.1) when mousing over items.

v. 2.0.1 - 2006/12/07

* Fixed posible blocked action errors in tooltip-hooking code.
* Fixed blocked action error when looting.

v. 2.0 - 2006/12/05

* Updated for compatibility with WoW 2.0 (and the Burning Crusade Closed Beta).
* We now print a line to the chat window when you begin disenchanting an item, making it easier to follow which reagents came from where when discenchanting many items.
* We also track whether a disenchant comes out as predicted, and print an error message in the chat window if we see a reagent we weren't expecting (with diagnostic info and a request to contact us so we can improve prediction in future releases).
* Redesigned the prediction algorithms to use an item's own level (a statistic not visible in the default UI, but now available to addons) rather than the required level to equip it. This means:

  * We now have more accurate predictions for Burning Crusade high-level items (which include greens of required level 57-60 whose item levels are 80-90, and thus disenchant differently than old level 57-60 greens).
  * We can now predict disenchants for quest rewards or other items which have no level requirement.
* Streamlined some older code for better efficiency.
* WoW 2.0 now adds a line to the tooltip showing the required enchanting skill to disenchant an item, or that it's not disenchantable at all -- we catch this now and won't display predictions for an item once we've learned it can't be disenchanted.
* NOTE: Predictions for Burning Crusade items/reagents are still tentative based on what data we've acquired so far. If you see an item disenchant into something that didn't match our predictions, please let us know!

See http://fizzwidget.com/notes/disenchantpredictor/ for older release notes.

