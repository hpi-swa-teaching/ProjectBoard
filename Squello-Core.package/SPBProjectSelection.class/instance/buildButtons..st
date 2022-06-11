as yet unclassified
buildButtons: builder
	^ {
	builder pluggableButtonSpec new
		model: self; 
		label: 'Select';
		action: #select.
	builder pluggableButtonSpec new
		model: self; 
		label: 'Cancel';
		action: #actionCancel.
	}