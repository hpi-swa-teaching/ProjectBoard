assignees
getAssigneeString: anOrderedCollection

	| assigneeString |
	anOrderedCollection isEmpty ifTrue: [^ ''].
	assigneeString := '\"', anOrderedCollection first, '\"'.
	anOrderedCollection allButFirstDo: [:each| assigneeString := assigneeString , ', \"', each, '\"'].
	^ assigneeString.