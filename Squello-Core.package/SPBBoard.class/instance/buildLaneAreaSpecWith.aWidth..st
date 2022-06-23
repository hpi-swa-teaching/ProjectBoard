toolbuilder
buildLaneAreaSpecWith: aBuilder aWidth: aNumber

	^ aBuilder resizeScrollPaneSpec new
		frame: (0@0 corner: aNumber@1);
		name: #laneArea;
		model: self;
		scrollBarThickness: 20;
		vScrollBarPolicy: #never;
		children: #buildLaneAreaChildren;
		layout: #horizontal;
		yourself.