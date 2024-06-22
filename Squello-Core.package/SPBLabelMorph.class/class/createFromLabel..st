instance creation
createFromLabel: aLabel

	^ SPBLabelMorph new
		backgroundColor: aLabel color;
		color: aLabel color makeForegroundColor;
		contents: aLabel title;
		lock;
		yourself.