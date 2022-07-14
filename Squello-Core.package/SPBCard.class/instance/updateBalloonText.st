updating
updateBalloonText
	
	| text |
	self assignees size = 0
		ifTrue: [self balloonText: nil. 
			^ self].
	text := 'Assignees:', Character cr.
	self assignees 
		do: [:each | text := text, each asString, Character cr].
	self balloonText: text.
	