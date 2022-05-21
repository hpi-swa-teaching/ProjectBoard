accessing
windowSpec

	| spec |
	spec := PluggableWindowSpec new.
	spec 
		label: 'Project Board';
		minimumWidth: 700;
		minimumHeight: 400.
		
	^ spec.
