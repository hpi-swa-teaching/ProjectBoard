converting
asMorph

	^ TextMorph new
		backgroundColor: self color;
		contents: self title;
		extent: 100@21;
		lock;
		yourself.