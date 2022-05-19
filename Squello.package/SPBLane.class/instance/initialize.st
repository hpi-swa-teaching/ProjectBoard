as yet unclassified
initialize

	super initialize.

	self titleWindow: SPBTextField new.
	self titleWindow
		vScrollBarPolicy: #never;
		width: 300;
		height: 50;
		acceptOnCR: true;
		addDependent: self.
	
	self
		width: 300;
		height: 700;
		borderWidth: 0;
		color: Color darkGray;
		addMorph: self titleWindow.
	
		
		