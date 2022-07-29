toolbuilder
buildLaneHeaderTitleSpecWith: aBuilder and: anSPBLane

	^ aBuilder pluggableTextSpec new
			frame: (0@0 corner: 1@0.6);
			model: anSPBLane;
			getText: #title;
			setText: #updateTitle:;
			yourself.