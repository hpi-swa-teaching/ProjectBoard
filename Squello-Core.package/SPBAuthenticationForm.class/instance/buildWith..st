toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableDialogSpec new
		model: self;
		label: #labelString;
		extent: 600 @ 60;
		exclusive: false;
		message: 'Insert GitHub authentication data:';
		children: {self buildInputPanel: aBuilder};
		buttons: (self buildButtons: aBuilder);
		yourself).