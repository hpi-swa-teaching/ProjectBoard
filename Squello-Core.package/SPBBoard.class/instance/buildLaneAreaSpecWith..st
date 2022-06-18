toolbuilder
buildLaneAreaSpecWith: aBuilder

	^ aBuilder resizeScrollPaneSpec new
		frame: (0@0 corner: 0.75@1);
		name: #laneArea;
		model: self;
		scrollBarThickness: 20;
		vScrollBarPolicy: #never;
		children: #buildLaneAreaChildren;
		layout: #horizontal;
		yourself.