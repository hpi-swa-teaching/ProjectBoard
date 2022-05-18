as yet unclassified
buildContent: aString
	
	| contentJson |
	contentJson := SPBGithubBoardProvider new queryCardContent: aString.
	self card title: (contentJson at: 'title').
	self card description: (contentJson at: 'description').
	
	
	
	