toolbuilder-recent boards
buildRecentGitHubBoardsButtonSpecWith: aBuilder withBoardInfo: aDictionary
	
	| name |
	name := (aDictionary at: #repo), ' : ' ,( aDictionary at: #name).
	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: [SPBBoard openFromPrompt: (aDictionary at: #url)];
		label: name;
		action: #value;
		yourself).
		