labels
deleteLabel: anSPBLabel fromCard: anSPBCard
	
	self api deleteLabel: anSPBLabel asString fromIssue: anSPBCard issueId user: self user repo: self repo.