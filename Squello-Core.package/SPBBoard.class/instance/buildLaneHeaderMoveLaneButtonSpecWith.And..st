toolbuilder
buildLaneHeaderMoveLaneButtonSpecWith: aBuilder And: aSPBLane

	^ aBuilder pluggableActionButtonSpec new
			frame: (0.85@0.6 corner: 1@1);
			model: aSPBLane;
			action: #moveLane;
			label: '<->';
			help: 'move the lane to another place';
			yourself.