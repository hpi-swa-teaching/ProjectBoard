toolbuilder
buildLaneHeaderAddCardButtonSpecWith: aBuilder and: aSPBLane

	^ aBuilder pluggableActionButtonSpec new
			frame: (0@0.6 corner: 0.85@1);
			model: aSPBLane;
			action: #addCard;
			label: '+ Add card';
			help: 'add a new card to the lane';
			yourself.