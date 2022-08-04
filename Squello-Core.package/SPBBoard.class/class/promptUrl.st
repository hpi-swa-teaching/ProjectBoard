startup
promptUrl

	^ FillInTheBlank 
		request: 'Please enter GitHub URL of your project board or your repository:' 
		initialAnswer: (self lastProject ifNotNil: [self lastProject] ifNil: ['']) 
		onCancelReturn: ''.