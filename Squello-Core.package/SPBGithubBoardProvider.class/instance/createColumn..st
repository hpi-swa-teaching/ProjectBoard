columns
createColumn: aString

	| payload columnJson |
	payload := Dictionary newFrom: {'name' -> aString}.
	columnJson := self api createColumn: payload inProject: self projectId.
	self checkForError: columnJson.
	^ SPBColumn newFrom: columnJson.
