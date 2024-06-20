mutations
getMoveCardMutation: aString toColumn: anotherString fieldID: aThirdString inProject: aForthString

	^ '{"query": "mutation{
		updateProjectV2ItemFieldValue(input:{
			clientMutationId:\"Squello\"
			projectId:\"', aForthString, '\"
			itemId:\"', aString, '\"
			fieldId:\"', aThirdString, '\"
			value:{
				singleSelectOptionId:\"', anotherString, '\"
			}
		}){
		clientMutationId
		}
	}"}'.