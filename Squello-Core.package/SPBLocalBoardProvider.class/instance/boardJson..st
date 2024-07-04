accessing
boardJson: aJsonObject

	boardJson := aJsonObject.
	self currentID: (aJsonObject at: 'currentID').