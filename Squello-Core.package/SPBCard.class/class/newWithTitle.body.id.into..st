instance creation
newWithTitle: aString body: anotherString id: anObject into: anSPBColumn

	^ self new
		cardId: anObject;
		boardProvider: anSPBColumn boardProvider;
		setupMouseEvents;
		title: aString;
		description: anotherString;
		buildUI;
		openInWorld;
		yourself.