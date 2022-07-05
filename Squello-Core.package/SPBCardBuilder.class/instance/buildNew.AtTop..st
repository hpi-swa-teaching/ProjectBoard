building
buildNew: aDictionary AtTop: aSPBLane

	| cardJson |
	cardJson := self provider createCard: aDictionary into: aSPBLane.
	self
		card: SPBCard new;
		setCardID: (cardJson at: 'id');
		setupMouseEvents;
		buildContent: (cardJson at: 'content_url');
		buildUI.
	self card provider: self provider.
	self card openInWorld.
	self setCardLaneAtTop: aSPBLane.	
	^ self card.