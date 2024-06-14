initialization
buildTitle
	
	| titleMorph |
	titleMorph := TextMorph new 
		wrapFlag: true;
		lock;
		width: self extent x - (2 * self padding);
		yourself.	
	self
		titleModel: titleMorph;
		addMorph: titleMorph.