cards
createNewCard: aDictionary into: anSPBColumn
	
	| cardJson payload issueJson |
	cardJson := self api createIssue: aDictionary user: self user repo: self repo.
	payload := Dictionary newFrom: {'content_id' -> (cardJson at: 'id') . 'content_type' -> 'Issue'}.
	issueJson := self api addIssue: payload toColumn: anSPBColumn id.
	
	^ SPBCard newFrom: issueJson with: anSPBColumn.