mutations
getUpdateCardPositionQuery: aString after: anotherString project: aThirdString
	
	| afterStr |
	afterStr := anotherString ifNil: [''] ifNotNil: ['afterId:\"', anotherString, '\"'].
	^ '{"query": "mutation{
		updateProjectV2ItemPosition(input:{
			clientMutationId:\"Squello\"
			itemId:\"', aString, '\"
			', afterStr, '
			projectId:\"' ,aThirdString, '\"
		}){
			clientMutationId
		}
	}"}'.