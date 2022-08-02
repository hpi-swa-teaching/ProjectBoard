building
buildLabels: aJsonObject
	
	^ (aJsonObject collect: [:label | SPBLabel newFrom: label]) asOrderedCollection.