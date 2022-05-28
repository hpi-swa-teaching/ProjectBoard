columns
createColumn: aString

	| payload |
	payload := Dictionary newFrom: {'title' -> aString}.
	self api createColumn: payload user: self user repo: self repo.