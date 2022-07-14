toolbuilder
buildLaneAreaSpecWith: aBuilder width: aNumber

	^ aBuilder resizeScrollPaneSpec new
			frame: (0@0 corner: aNumber@1);
			name: #laneArea;
			model: self;
			scrollBarThickness: 20;
			vScrollBarPolicy: #never;
			children: #buildLaneAreaChildren;
			layout: #horizontal;
			yourself.