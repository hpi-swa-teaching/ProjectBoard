toolbuilder-recent boards
buildRecentLocalBoardsButtonSpecWith: aBuilder withName: aName

	^ aBuilder pluggableButtonSpec new
		model: [SPBBoard openFromPrompt: aName];
		action: #value;
		label: aName;
		yourself.