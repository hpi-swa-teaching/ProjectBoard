as yet unclassified
buildFromRemote: aJsonObject

	self card: SPBCard new.
	self buildId: (aJsonObject at: 'id').
	self buildContent: (aJsonObject at: 'content_url').
	self card setUpUI.
	^ self card.