building
buildNew: aDictionary AtTop: anSPBLane

	| cardJson |
	cardJson := self provider createCard: aDictionary into: anSPBLane.
	self
		card: SPBCard new;
		setCardID: (cardJson at: 'id');
		setupMouseEvents;
		buildContent: (cardJson at: 'content_url');
		buildUI;
		buildIndicatorDetection.
	self card provider: self provider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardLaneAtTop: anSPBLane.	
	^ self card.