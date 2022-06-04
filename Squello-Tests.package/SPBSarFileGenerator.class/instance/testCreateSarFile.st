tests
testCreateSarFile

	| zip corePackage |
	corePackage := 'Squello-Core'.
	zip := ZipArchive new.
	
	self streamForPackage: corePackage inZip: zip.
	zip addString: (self generatePreamble: corePackage) as: 'install/preamble'.
	zip writeToFileNamed: 'squello.sar'
	