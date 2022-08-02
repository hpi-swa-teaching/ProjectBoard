initialize-release
errorNoProjects
	
	UserDialogBoxMorph 
		inform: 'Repository has no projects' title: 'Operation canceled'.
	^ Error signal.