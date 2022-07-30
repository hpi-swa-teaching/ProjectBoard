cards
createCard: aDictionary into: anSPBColumn
	
	| cardJson payload |
	cardJson := self api createIssue: aDictionary user: self user repo: self repo.
	payload := Dictionary newFrom: {'content_id' -> (cardJson at: 'id') . 'content_type' -> 'Issue'}.
	^ self api addIssue: payload toColumn: anSPBColumn id.