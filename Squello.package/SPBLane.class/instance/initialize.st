as yet unclassified
initialize

	super initialize.

	self titleWindow: PluggableTextMorphPlus new.
	self titleWindow vScrollBarPolicy: #never.
	self titleWindow width: 300.
	self titleWindow height: 50.
	
	self
		width: 300;
		height: 700;
		borderWidth: 0;
		color: Color darkGray;
		addMorph: self titleWindow.
	
		
		