instance creation
newFromLocal: aJsonObject with: anSPBColumn

	^ self new
		cardId: (aJsonObject at: 'id');
		boardProvider: anSPBColumn boardProvider;
		changeProvider: anSPBColumn changeProvider;
		setupMouseEvents;
		buildLocalCard: aJsonObject;
		buildUI;
		openInWorld;
		yourself.