instance creation
newFrom: aJsonObject with: anSPBColumn

	^ self new
		id: (aJsonObject at: 'id');
		boardProvider: anSPBColumn boardProvider;
		changeProvider: anSPBColumn changeProvider;
		setupMouseEvents;
		buildContent: (aJsonObject at: 'content_url');
		buildUI;
		openInWorld;
		yourself.