as yet unclassified
newFrom: aJsonObject
	|lane title|
	title := aJsonObject at: 'name'.
	lane := self new.
	lane title: title.
	lane titleWindow setText: title.
	lane id: (aJsonObject at: 'id').
	
	^lane.