cards
updateCard: anSPBCard

	| payload |
	payload := Dictionary newFrom: {'title' -> anSPBCard title . 'body' -> anSPBCard description}.
	self api updateIssue: anSPBCard issueId withData: payload user: self user repo: self repo.