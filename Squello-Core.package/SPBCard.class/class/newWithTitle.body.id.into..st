instance creation
newWithTitle: aString body: anotherString id: anObject into: anSPBColumn

	^ self new
		cardId: anObject;
		boardProvider: anSPBColumn boardProvider;
		changeProvider: anSPBColumn changeProvider;
		setupMouseEvents;
		title: aString;
		description: anotherString;
		buildUI;
		openInWorld;
		yourself.