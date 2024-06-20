cards
updateIssue: aSPBCard

	| data |
	data := (self getUpdateIssueMutation: aSPBCard) parseAsJson.
	^ self postRequestwithData: data.