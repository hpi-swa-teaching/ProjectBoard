toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableDialogSpec new
		model: self;
		label: #labelString;
		extent: 600 @ 60;
		exclusive: false;
		message: 'Insert GitHub authentication data:';
		buttons: (self buildButtons: aBuilder);
		children: {self buildInputPanel: aBuilder};
		yourself).