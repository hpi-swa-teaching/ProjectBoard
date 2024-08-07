toolbuilder-recent boards
buildRecentGitHubBoardsButtonSpecWith: aBuilder withBoardInfo: aDictionary
	
	| name |
	name := (aDictionary at: #repo), ' : ' ,( aDictionary at: #name).
	^ aBuilder pluggableButtonSpec new
		model: [SPBBoard openFromPrompt: (aDictionary at: #url)];
		action: #value;
		label: name;
		yourself.