toolbuilder
buildLaneAreaSpecWith: aBuilder aWidth: aNumber

	^ aBuilder pluggableScrollPaneSpec new
		frame: (0@0 corner: aNumber@1);
		name: #laneArea;
		model: self;
		vScrollBarPolicy: #never;
		children: #buildLaneAreaChildren;
		layout: #horizontal;
		yourself.