toolbuilder
buildColumnAreaSpecWith: aBuilder width: aNumber

	^ aBuilder resizeScrollPaneSpec new
			frame: (0@0 corner: aNumber@1);
			name: #columnArea;
			model: self;
			scrollBarThickness: 20;
			vScrollBarPolicy: #never;
			children: #buildColumnAreaChildren;
			layout: #horizontal;
			yourself.