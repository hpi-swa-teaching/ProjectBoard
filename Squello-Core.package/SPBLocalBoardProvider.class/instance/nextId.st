cards
nextId

	currentId ifNil: [currentId := 10].
	^ currentId := currentId + 1.