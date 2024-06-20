toolbuilder
buildButtons: aBuilder

	^ {aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Submit';
			action: #actionSubmit;
			color: Color green muchDarker;
			yourself.
		aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Cancel';
			action: #actionCancel;
			color: Color orange muchDarker;
			yourself.
		aBuilder pluggableButtonSpec new
			model: self;
			label: 'Logout';
			action: #resetCredentials;
			color: Color red muchDarker;
			yourself}.