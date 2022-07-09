building
buildFromRemote: aJsonObject into: aSPBLane

	self
		card: SPBCard new;
		setCardID: (aJsonObject at: 'id');
		buildContent: (aJsonObject at: 'content_url');
		buildUI.
	self card provider: self provider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardLane: aSPBLane.	
	^ self card.