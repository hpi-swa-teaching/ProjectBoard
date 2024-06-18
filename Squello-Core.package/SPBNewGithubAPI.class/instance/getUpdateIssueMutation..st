mutations
getUpdateIssueMutation: aSPBCard
	
	
	| state |
	state := aSPBCard isClosed ifTrue: ['CLOSED'] ifFalse: ['OPEN'].
	^ '{"query": "mutation{
		updateIssue(input:{
			clientMutationId:\"Squello\"
			id: \"', aSPBCard id, '\"
			state: ', state ,'
			title: \"', aSPBCard title, '\"
			body: \"', aSPBCard description, '\"
			})
			{
				clientMutationId
			}
		}"}'