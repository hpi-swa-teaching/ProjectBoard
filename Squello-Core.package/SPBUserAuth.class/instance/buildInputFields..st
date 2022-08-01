toolbuilder
buildInputFields: builder
	
	^ {builder pluggableInputFieldSpec new
			model: self;
			getText: #actionUsername;
			editText: #actionUsername:;
			setText: #actionUsername:;
			help: 'GitHub username.';
			yourself.
		builder pluggableInputFieldSpec new
			model: self;
			font: (StrikeFont passwordFontSize: 12);
			getText: #actionToken;
			editText: #actionToken:;
			setText: #actionToken:;
			help: 'GitHub access token';
			yourself}.