startup
promptUrl

	^ FillInTheBlank 
		request: 'Please enter GitHub URL of your project board or your repository or enter "local.x" for a local board:' 
		initialAnswer: (self lastProject ifNotNil: [self lastProject] ifNil: ['']) 
		onCancelReturn: ''.