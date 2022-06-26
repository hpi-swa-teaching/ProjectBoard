accessing
manageChanges
	
	| changes |
	changes := self provider getChanges.
	changes ifNotEmpty: [changes collect: [:each | self parseChange: (each parseAsJson)]].