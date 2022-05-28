labels
listLabelsForCard: aSPBCard

	^ self api listLabelsForIssue: aSPBCard issueId user: self user repo: self repo.