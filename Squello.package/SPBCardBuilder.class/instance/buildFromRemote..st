as yet unclassified
buildFromRemote: aJsonObject

	self card: SPBCard new.
	self buildId: (aJsonObject at: 'id').