cards
updateCard: anSPBCard

	| payload |
	anSPBCard isNote 
	ifTrue: [
		payload := Dictionary newFrom: {'note' -> anSPBCard title}.
		self api updateNote: anSPBCard id withPostData: payload.]
	ifFalse: [
		| state |
		state := anSPBCard isClosed ifTrue: ['closed'] ifFalse: ['open'].
		payload := Dictionary newFrom: {'title' -> anSPBCard title . 'body' -> anSPBCard description . 'state' -> state}.
		self api updateIssue: anSPBCard issueId withData: payload user: self user repo: self repo.].