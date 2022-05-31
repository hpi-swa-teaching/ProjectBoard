as yet unclassified
queryProjectsForUser: aString repo: anotherString
	
	"returns array of Projects-Json"
	^	{
		JsonObject new
			at: 'id' put: 14427987.
			
		JsonObject new
			at: 'id' put: 100000
		}