columns
checkForError: aJsonObject

	(aJsonObject includesKey: 'errors')
		ifTrue: [Error signal: aJsonObject at: 'errors'].