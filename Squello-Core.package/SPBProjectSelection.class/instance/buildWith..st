as yet unclassified
buildWith: builder

	^ builder build: (builder pluggableDialogSpec new
		model: self;
		label: #labelString;
		extent: 600@60;
		exclusive: false;
		message: 'Select a Project:';
		children: {self buildSelectionList: builder};
		buttons: (self buildButtons: builder))