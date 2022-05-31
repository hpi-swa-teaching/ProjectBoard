columns
createColumn: aString

	| payload |
	payload := Dictionary newFrom: {'name' -> aString}.
	^ self api createColumn: payload user: self user repo: self repo.