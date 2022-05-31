toolbuilder
buildButtons: builder
	^ {
	builder pluggableButtonSpec new
		model: self; 
		label: 'Login';
		action: #actionSaveAndClose.
	builder pluggableButtonSpec new
		model: self; 
		label: 'Cancel';
		action: #actionCancel.
	}