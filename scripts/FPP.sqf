_future = time + 30;

while {time < _future} do {
	waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};
	if ((vehicle player) == player) then {
			player switchCamera "INTERNAL";
			};
		};