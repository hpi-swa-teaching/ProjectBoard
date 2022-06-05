assignees
deleteLabel: aSPBLabel fromCard: aSPBCard
	
	^ self api deleteLabel: aSPBLabel asString fromIssue: aSPBCard issueId user: self user repo: self repo.