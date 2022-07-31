initialization
initialize

	| titleMorph assigneeMorph |
	super initialize.
	
	titleMorph := TextMorph new 
			wrapFlag: true;
			lock;
			width: 280;
			yourself.
	assigneeMorph := TextMorph new
		lock;
		yourself.
		
	self
		titleMorph: titleMorph;
		assigneeMorph: assigneeMorph;
		addMorph: titleMorph;
		addMorph: assigneeMorph.