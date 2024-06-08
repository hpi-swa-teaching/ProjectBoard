toolbuilder
list 
 	"returns #() with strings"
	
	
	^ #('Recent Boards' 'Open Board' 'New local Board' 'Manage local Boards' 'Reset User Account' 'Authentification' )
	

	"^ #( apple tree )"
	"^#( 'apple tree' 'peach' )"
	"^{ 'apple'. currentProject }"
	"^ self projects collect: [:p | p name]"