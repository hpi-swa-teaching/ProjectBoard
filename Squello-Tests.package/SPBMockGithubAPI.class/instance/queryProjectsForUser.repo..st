as yet unclassified
queryProjectsForUser: aString repo: anotherString
	
	"returns array of Projects-Json"
	^	{
		JsonObject new
			at: 'id' put: 14427987;
			at: 'name' put: 'test1'.
			
		JsonObject new
			at: 'id' put: 100000;
			at: 'name' put: 'test2'
		}