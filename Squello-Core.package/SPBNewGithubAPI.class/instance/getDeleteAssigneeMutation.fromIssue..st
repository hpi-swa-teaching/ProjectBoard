mutations
getDeleteAssigneeMutation: aString fromIssue: anotherString

	^ '{"query": "mutation{
		removeAssigneesFromAssignable(input: {
			assignableId: \"', anotherString,'\" 
			clientMutationId: \"Squello\" 
			assigneeIds: [\"', aString , '\"]}){
				clientMutationId
			}
		}"}'