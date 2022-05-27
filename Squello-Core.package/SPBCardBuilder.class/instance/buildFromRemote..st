as yet unclassified
buildFromRemote: aJsonObject

	self
		card: SPBCard new;
		buildID: (aJsonObject at: 'id');
		buildContent: (aJsonObject at: 'content_url');
		buildUI.
		
	self card provider: self provider.
	^ self card.