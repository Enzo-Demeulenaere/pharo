Extension { #name : 'Collection' }

{ #category : '*System-Model' }
Collection >> copyWithDependent: newElement [
	"Answer a new collection with newElement added (as last
	element if sequenceable)."
	^self copyWith: newElement
]
