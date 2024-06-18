mutations
getAddAssigneeMutation: aString toIssue: anotherString

	^ '{"query": "mutation{
		addAssigneesToAssignable(input: {
			assignableId: \"', anotherString,'\" 
			clientMutationId: \"Squello\" 
			assigneeIds: [\"', aString , '\"]}){
				clientMutationId
			}
		}"}'