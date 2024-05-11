as yet unclassified
addIssue: aDictionary toColumn: aNumber
	
	"returns Json of added card"
	| column_url content_url |
	column_url := 'https://api.github.com/projects/columns/', aNumber.
	((aDictionary at: 'content_type') = 'Issue') ifFalse: [^self].
	content_url := 'https://api.github.com/repos/user/repo/issues', (aDictionary at: 'content_id').
	
	^	JsonObject new
			at: 'column_url' put: column_url;
			at: 'content_url' put: content_url;
			yourself.