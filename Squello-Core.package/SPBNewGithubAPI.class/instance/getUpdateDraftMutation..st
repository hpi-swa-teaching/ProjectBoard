mutations
getUpdateDraftMutation: aSPBCard
	
	^ '{"query": "mutation{
		updateProjectV2DraftIssue(input:{
			clientMutationId:\"Squello\"
			draftIssueId: \"', aSPBCard issueId, '\"
			title: \"', aSPBCard title, '\"
			body: \"', aSPBCard description, '\"
			})
			{
				clientMutationId
			}
		}"}'