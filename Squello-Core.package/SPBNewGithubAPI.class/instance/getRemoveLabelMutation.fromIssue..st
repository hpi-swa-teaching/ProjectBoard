mutations
getRemoveLabelMutation: aString fromIssue: anotherString

	^ '{"query": "mutation{
		removeLabelsFromLabelable(input: {
			labelableId: \"', anotherString,'\" 
			clientMutationId: \"Squello\" 
			labelIds: [\"', aString , '\"]}){
				clientMutationId
			}
		}"}'