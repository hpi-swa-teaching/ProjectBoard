toolbuilder
buildWith: builder

	^ builder build: (builder pluggableDialogSpec new
		model: self;
		label: #labelString;
		extent: 600@60;
		exclusive: false;
		message: 'Insert GitHub authentication data:';
		children: {self buildInputPanel: builder};
		buttons: (self buildButtons: builder)).