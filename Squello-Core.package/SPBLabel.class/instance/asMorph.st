converting
asMorph

	^ SPBLabelMorph new
		backgroundColor: self color;
		color: self color makeForegroundColor;
		contents: self title;
		extent: 100@21;
		lock;
		yourself.