mutations
getDeleteAssigneeMutation: aString fromDraft: anotherString

	"aString is a Json Array of all assignees except the removed one"
	^ '{"query": "mutation{
		updateProjectV2DraftIssue(input: {
			clientMutationId:\"Squello\"
			draftIssueId: \"', anotherString, '\"
			assigneeIds:[
				', aString, ']
			}){
				clientMutationId
			}
		}"}'.