toolbuilder
buildButtons: aBuilder

	^ {aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Submit';
			action: #actionSubmit;
			yourself.
		aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Cancel';
			action: #actionCancel;
			yourself.
		aBuilder pluggableButtonSpec new
			model: self;
			label: 'Logout';
			action: #resetCredentials;
			yourself}.