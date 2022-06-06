toolbuilder
buildLaneAreaSpecWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
		frame: (0@0 corner: 0.75@1);
		name: #laneArea;
		model: self;
		vScrollBarPolicy: #never;
		children: #buildLaneAreaChildren;
		layout: #horizontal;
		yourself.