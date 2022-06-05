building
buildLabels: aJsonObject
	
	^ (aJsonObject collect: [:each | SPBLabel newFrom: each]) asOrderedCollection.