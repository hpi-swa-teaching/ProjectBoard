creation
initialize

	super initialize.

"	self titleWindow: SPBTextField new.
	self titleWindow
		vScrollBarPolicy: #never;
		width: 300;
		height: 50;
		acceptOnCR: true."
	
	self
		width: self class width;
		height: self class height;
		borderWidth: 0;
		color: Color darkGray;
"		addMorph: self titleWindow."
		buildTitlePanel.
	
		
		