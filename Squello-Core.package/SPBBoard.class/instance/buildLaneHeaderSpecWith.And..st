toolbuilder
buildLaneHeaderSpecWith: aBuilder And: aSPBLane

	^ aBuilder pluggablePanelSpec new
		frame: (0@0 corner: 1@0.05);
		children: {
			self buildLaneHeaderTitleSpecWith: aBuilder And: aSPBLane.
			self buildLaneHeaderAddCardButtonSpecWith: aBuilder And: aSPBLane.
		};
		yourself.