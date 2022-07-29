building
buildNew: aDictionary atTop: anSPBLane

	| cardJson |
	cardJson := self boardProvider createCard: aDictionary into: anSPBLane.
	self
		card: SPBCard new;
		setCardID: (cardJson at: 'id');
		setupMouseEvents;
		buildContent: (cardJson at: 'content_url');
		buildUI;
		buildIndicatorDetection.
	self card boardProvider: self boardProvider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardLaneAtTop: anSPBLane.	
	^ self card.