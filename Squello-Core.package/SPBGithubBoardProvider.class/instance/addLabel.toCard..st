labels
addLabel: anSPBLabel toCard: anSPBCard
	
	| payload |
	payload := Dictionary newFrom: { 'labels' -> {anSPBLabel title} }.
	self api addLabel: payload toIssue: anSPBCard issueId user: self user repo: self repo.