building
buildNew: aDictionary into: aSPBLane

	| cardJson |
	cardJson := self provider createCard: aDictionary into: aSPBLane.
	self
		card: SPBCard new;
		setCardID: (cardJson at: 'id');
		setupMouseEvents;
		buildContent: (cardJson at: 'content_url');
		buildUI.
	self card provider: self provider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardLane: aSPBLane.	
	^ self card.