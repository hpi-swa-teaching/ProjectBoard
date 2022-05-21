as yet unclassified
buildFromRemote: aJsonObject

	self
		card: SPBCard new;
		buildId: (aJsonObject at: 'id');
		buildContent: (aJsonObject at: 'content_url');
		buildUI.
	self card provider: self provider.
	^ self card.