window construction
sidebarDescriptionSpec

	| spec frame |
	spec := PluggableInputFieldSpec new.
	frame := LayoutFrame new.
	frame
		leftFraction: 0 offset: 10;
		topFraction: 0.1 offset: 10;
		rightFraction: 1 offset: -10;
		bottomFraction: 1 offset: -10.
	spec 
		frame: frame;
		model: self board;
		setText: #updateDescription:.
		
	^ spec.
