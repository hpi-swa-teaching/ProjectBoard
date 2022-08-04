toolbuilder
buildInputFields: aBuilder
	
	^ {aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #username;
			editText: #updateUsername:;
			setText: #updateUsername:;
			help: 'GitHub username.';
			yourself.
		aBuilder pluggableInputFieldSpec new
			model: self;
			font: (StrikeFont passwordFontSize: 12);
			getText: #token;
			editText: #updateToken:;
			setText: #updateToken:;
			help: 'GitHub access token';
			yourself}.