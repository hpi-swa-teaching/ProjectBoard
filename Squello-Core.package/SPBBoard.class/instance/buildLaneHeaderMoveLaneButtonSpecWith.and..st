toolbuilder
buildLaneHeaderMoveLaneButtonSpecWith: aBuilder and: anSPBLane

	^ aBuilder pluggableActionButtonSpec new
			frame: (0.85@0.6 corner: 1@1);
			model: anSPBLane;
			action: #moveLane;
			label: '<->';
			help: 'move the lane to another place';
			yourself.