toolbuilder
buildScrollpaneSpecWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
		frame: (0@0 corner: 0.75@1);
		name: #laneArea;
		vScrollBarPolicy: #never;
		children: (self buildLanesSpecWith: aBuilder);
		yourself.