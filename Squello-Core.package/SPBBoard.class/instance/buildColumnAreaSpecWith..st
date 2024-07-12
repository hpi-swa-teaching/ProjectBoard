toolbuilder-colum
buildColumnAreaSpecWith: aBuilder

	^ aBuilder resizeScrollPaneSpec new
		model: self;
		frame: (0@0 corner: self widthColumnArea@1);
		name: #columnArea;
		scrollBarThickness: 20;
		vScrollBarPolicy: #never;
		layout: #horizontal;
		children: #buildColumnAreaChildren;
		yourself.