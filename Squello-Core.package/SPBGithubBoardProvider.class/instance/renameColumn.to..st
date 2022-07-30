columns
renameColumn: anSPBColumn to: aString

	| payload |
	payload := Dictionary newFrom: {'name' -> aString}.
	self api updateColumn: anSPBColumn id withData: payload.