toolbuilder
buildLaneHeaderTitleSpecWith: aBuilder And: aSPBLane

	^ aBuilder pluggableTextSpec new
			frame: (0@0 corner: 1@0.6);
			model: aSPBLane;
			getText: #title;
			setText: #updateTitle:;
			yourself.