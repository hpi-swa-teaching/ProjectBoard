toolbuilder
buildButtons: builder

	^ {builder pluggableButtonSpec new
			model: self; 
			label: 'Submit';
			action: #actionSaveAndClose;
			yourself.
		builder pluggableButtonSpec new
			model: self; 
			label: 'Cancel';
			action: #actionCancel;
			yourself}.