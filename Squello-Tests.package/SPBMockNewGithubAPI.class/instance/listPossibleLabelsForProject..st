labels
listPossibleLabelsForProject: aString 
	
	^ '[
		{
			"name": "yummy",
			"id": "1234",
			"color":"00FF00"
		},
		{
			"name":"goo",
			"id":"4321",
			"color":"FF0000"
		}
		]' parseAsJson.