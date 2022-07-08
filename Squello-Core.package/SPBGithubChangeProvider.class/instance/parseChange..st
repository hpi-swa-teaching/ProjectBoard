as yet unclassified
parseChange: aJsonObject
	
	"Code to parse a given change"
	| action change type |
	
	action := aJsonObject at: 'action'.
	
	(aJsonObject includesKey: 'project_card') ifTrue: [
		type := #card.
		action = 'moved' ifTrue: [change := self cardMoved: aJsonObject].
		action = 'created' ifTrue: [type := #lane. change := self cardCreated: aJsonObject].
		action = 'deleted' ifTrue: [change := self cardDeleted: aJsonObject]].

	(aJsonObject includesKey: 'project_column') ifTrue: [
		type := #lane.
		action = 'moved' ifTrue: [change := self laneMoved: aJsonObject].
		action = 'created' ifTrue: [type := #board. change := self laneCreated: aJsonObject].
		action = 'deleted' ifTrue: [change := self laneDeleted: aJsonObject].
		action = 'edited' ifTrue: [change := self laneEdited: aJsonObject]].
	
	(aJsonObject includesKey: 'issue') ifTrue: [
		type := #card.
		action = 'labeled' ifTrue: [change := self cardLabeled: aJsonObject].
		action = 'unlabeled' ifTrue: [change := self cardUnlabeled: aJsonObject].
		action = 'assigned' ifTrue: [change := self cardAssigned: aJsonObject].
		action = 'unassigned' ifTrue: [change := self cardUnassigned: aJsonObject].
		action = 'edited' ifTrue: [change := self cardEdited: aJsonObject]].
	
	self changed: type with: change.