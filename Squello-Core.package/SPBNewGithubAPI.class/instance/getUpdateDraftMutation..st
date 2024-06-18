mutations
getUpdateDraftMutation: aSPBCard
	
	^ '{"query": "mutation{
		updateProjectV2DraftIssue(input:{
			clientMutationId:\"Squello\"
			draftIssueId: \"', aSPBCard id, '\"
			title: \"', aSPBCard title, '\"
			body: \"', aSPBCard description, '\"
			})
			{
				clientMutationId
			}
		}"}'