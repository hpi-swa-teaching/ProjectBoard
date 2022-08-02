toolbuilder
buildInputFields: aBuilder
	
	^ {aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #actionUsername;
			editText: #actionUsername:;
			setText: #actionUsername:;
			help: 'GitHub username.';
			yourself.
		aBuilder pluggableInputFieldSpec new
			model: self;
			font: (StrikeFont passwordFontSize: 12);
			getText: #actionToken;
			editText: #actionToken:;
			setText: #actionToken:;
			help: 'GitHub access token';
			yourself}.