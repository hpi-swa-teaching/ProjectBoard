toolbuilder
buildWith: builder
	^ builder build: (builder pluggableDialogSpec new
		model: self;
		label: #labelString;
		autoCancel: true;
		extent: 200@60;
		message: 'Insert GitHub authentication data:';
		children: {self buildInputPanel: builder};
		buttons: (self buildButtons: builder))