initialization
buildAssigneeText

	| assigneeMorph |
	assigneeMorph := TextMorph new
		lock;
		yourself.
	self
		addMorph: assigneeMorph;
		assigneeModel: assigneeMorph.