mutations
getAddLabelMutation: aString toIssue: anotherString

	^ '{"query": "mutation{
		addLabelsToLabelable(input: {
			labelableId: \"', anotherString,'\" 
			clientMutationId: \"Squello\" 
			labelIds: [\"', aString , '\"]}){
				clientMutationId
			}
		}"}'