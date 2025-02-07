"
I am a number literal token. 
Special handling is needed for converting a negative literal token if it is part of a binary message send. In an expression like
a - 1
the scanner produces the tokens 'a' and '-1'. This will be converted to the token
'a', the binary selector token '-' and the number literal token '1'.
"
Class {
	#name : 'OCNumberLiteralToken',
	#superclass : 'OCLiteralToken',
	#category : 'AST-Core-Tokens',
	#package : 'AST-Core',
	#tag : 'Tokens'
}

{ #category : 'testing' }
OCNumberLiteralToken >> isNumberLiteralToken [
	^true
]

{ #category : 'storing' }
OCNumberLiteralToken >> storeOn: aStream [
	aStream nextPutAll: source
]
