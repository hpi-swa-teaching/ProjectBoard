instance creation
newFrom: aJsonObject with: anSPBColumn

	^ self new
		cardId: (aJsonObject at: 'id');
		boardProvider: anSPBColumn boardProvider;
		changeProvider: anSPBColumn changeProvider;
		setupMouseEvents;
		buildCard: aJsonObject;
		buildUI;
		openInWorld;
		yourself.