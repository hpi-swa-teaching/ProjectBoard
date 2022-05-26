toolbuilder
buildLaneSpecWith: aBuilder And: aSPBLane At: aNumber

	^ aBuilder pluggablePanelSpec new
		frame: (6 * (aNumber -1) @ 0 corner: 6 * aNumber @ 50);
		children: {
			self buildLaneHeaderSpecWith: aBuilder And: aSPBLane.
			self buildLaneBodySpecWith: aBuilder And: aSPBLane.
		};
		verticalResizing: #spaceFill;
		yourself.