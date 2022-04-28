toolbuilder
buildValueLabelSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #counterValueString;
			readOnly: true;
			frame: (0@0 corner: 1@0.5);
			yourself