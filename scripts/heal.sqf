
#include "\z\ace\addons\medical\script_component.hpp"


_injured = player;

_injured setVariable [QGVAR(pain), 0, true];
_injured setVariable [QGVAR(morphine), 0, true];
_injured setVariable [QGVAR(bloodVolume), 100, true];
_injured setVariable ["ACE_isUnconscious", false, true];
_injured setvariable [QGVAR(tourniquets), [0,0,0,0,0,0], true];
_injured setvariable [QGVAR(openWounds), [], true];
_injured setvariable [QGVAR(bandagedWounds), [], true];
_injured setVariable [QGVAR(internalWounds), [], true];
_injured setvariable [QGVAR(lastUniqueWoundID), 1, true];
_injured setVariable [QGVAR(heartRate), 80];
_injured setvariable [QGVAR(heartRateAdjustments), []];
_injured setvariable [QGVAR(bloodPressure), [80, 120]];
_injured setVariable [QGVAR(peripheralResistance), 100];
_injured setVariable [QGVAR(fractures), [], true];
_injured setvariable [QGVAR(triageLevel), 0, true];
_injured setvariable [QGVAR(triageCard), [], true];
_injured setVariable [QGVAR(salineIVVolume), 0, true];
_injured setVariable [QGVAR(plasmaIVVolume), 0, true];
_injured setVariable [QGVAR(bloodIVVolume), 0, true];
_injured setvariable [QGVAR(bodyPartStatus), [0,0,0,0,0,0], true];
_injured setvariable [QGVAR(airwayStatus), 100];
_injured setVariable [QGVAR(airwayOccluded), false];
_injured setvariable [QGVAR(airwayCollapsed), false];
_injured setvariable [QGVAR(addedToUnitLoop), false, true];
_injured setvariable [QGVAR(inCardiacArrest), false, true];
_injured setvariable [QGVAR(hasLostBlood), 0, true];
_injured setvariable [QGVAR(isBleeding), false, true];
_injured setvariable [QGVAR(hasPain), false, true];
_injured setvariable [QGVAR(amountOfReviveLives), GVAR(amountOfReviveLives), true];
_injured setvariable [QGVAR(painSuppress), 0, true];
_injured setDamage 0;





doc sidechat "You have been fully healed";