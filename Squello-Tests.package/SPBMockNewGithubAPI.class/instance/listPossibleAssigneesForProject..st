assignees
listPossibleAssigneesForProject: aString
	
	^ '[
		{
			"login": "fish",
			"id": "42"
		},
		{
			"login":"cat",
			"id":"69"
		}
		]' parseAsJson.