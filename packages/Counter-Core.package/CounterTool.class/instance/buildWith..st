toolbuilder
buildWith: aBuilder

	| window |
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: #counterValueString;
		extent: 200@100;
		children: {
			self buildValueLabelSpecWith: aBuilder.
			self buildButtonBarSpecWith: aBuilder}
		yourself.
		
	^ aBuilder build: window