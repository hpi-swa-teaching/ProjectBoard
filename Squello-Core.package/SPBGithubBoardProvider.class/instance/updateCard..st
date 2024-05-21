cards
updateCard: anSPBCard

	| payload |
	anSPBCard isNote 
	ifTrue: [
		payload := Dictionary newFrom: {'note' -> anSPBCard title}.
		self api updateNote: anSPBCard id withPostData: payload.]
	ifFalse: [
		payload := Dictionary newFrom: {'title' -> anSPBCard title . 'body' -> anSPBCard description}.
		self api updateIssue: anSPBCard issueId withData: payload user: self user repo: self repo.].