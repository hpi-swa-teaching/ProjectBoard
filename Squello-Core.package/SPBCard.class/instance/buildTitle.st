initialization
buildTitle
	
	| titleMorph |
	titleMorph := TextMorph new 
		wrapFlag: true;
		lock;
		width: self extent x;
		yourself.	
	self
		titleModel: titleMorph;
		addMorph: titleMorph.