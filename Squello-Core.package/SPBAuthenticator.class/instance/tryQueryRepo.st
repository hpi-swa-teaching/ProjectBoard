authentication
tryQueryRepo
	"test if you can query the repo with this token"
	
	| repo |
	repo := self boardProvider getRepo.
	^ (repo message = 'Not Found') not.
	