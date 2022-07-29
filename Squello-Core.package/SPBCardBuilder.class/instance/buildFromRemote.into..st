building
buildFromRemote: aJsonObject into: anSPBLane

	self
		card: SPBCard new;
		setCardID: (aJsonObject at: 'id');
		setupMouseEvents;
		buildContent: (aJsonObject at: 'content_url');
		buildUI;
		buildIndicatorDetection.
	self card boardProvider: self boardProvider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardLane: anSPBLane.
	
	^ self card.