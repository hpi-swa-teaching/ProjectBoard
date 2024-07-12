toolbuilder-colum
buildColumnAreaSpecWith: aBuilder width: aNumber

	^ aBuilder resizeScrollPaneSpec new
		model: self;
		frame: (0@0 corner: aNumber@1);
		name: #columnArea;
		scrollBarThickness: 20;
		vScrollBarPolicy: #never;
		layout: #horizontal;
		children: #buildColumnAreaChildren;
		yourself.