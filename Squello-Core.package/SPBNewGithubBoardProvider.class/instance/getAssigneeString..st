assignees
getAssigneeString: anOrderedCollection

	| str |
	anOrderedCollection isEmpty ifTrue: [^ ''].
	str := '\"', anOrderedCollection first, '\"'.
	anOrderedCollection allButFirstDo: [:each| str := str , ', \"', each, '\"'].
	^ str.