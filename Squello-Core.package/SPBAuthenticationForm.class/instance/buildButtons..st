toolbuilder
buildButtons: aBuilder

	^ {aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Submit';
			action: #actionSaveAndClose;
			yourself.
		aBuilder pluggableButtonSpec new
			model: self; 
			label: 'Cancel';
			action: #actionCancel;
			yourself}.