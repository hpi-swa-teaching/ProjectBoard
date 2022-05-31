toolbuilder
buildInputFields: builder
	^ {
	builder pluggableInputFieldSpec new
		model: self;
		getText: #actionUserName;
		editText: #actionUserName:;
		setText: #actionUserName:;
		help: 'GitHub username.'.
	builder pluggableInputFieldSpec new
		model: self;
		getText: #actionUserToken;
		editText: #actionUserToken:;
		setText: #actionUserToken:;
		help: 'GitHub access token'.
	}