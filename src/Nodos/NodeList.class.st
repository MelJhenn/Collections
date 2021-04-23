Class {
	#name : #NodeList,
	#superclass : #Object,
	#instVars : [
		'header'
	],
	#category : #Nodos
}

{ #category : #adding }
NodeList >> add: anObject [ 

	self add: anObject in: header.
	
	
]

{ #category : #adding }
NodeList >> add: anObject in: aNode [
	aNode next ifNil: [ 
		aNode data: anObject.
		aNode next: Node new.
		] ifNotNil: [ 
		self add: anObject in: aNode next.
		 ]
	
	
	
]

{ #category : #accessing }
NodeList >> includes: anObject [
	^self includes: anObject in: header.
]

{ #category : #accessing }
NodeList >> includes: anObject in: aNode [
	^aNode next 
		ifNil:  [ false ] 
		ifNotNil: [ 
			aNode data== anObject 
				ifTrue: [ true] 
				ifFalse: [ self includes: anObject in: aNode next]].
]

{ #category : #initialization }
NodeList >> initialize [
	super initialize.
	header:= Node new.
	
	
]

{ #category : #accessing }
NodeList >> size [ 
	^self sizeOf: header.
	
]

{ #category : #accessing }
NodeList >> sizeOf: aNode [
	^aNode next ifNil: [ 0 ] ifNotNil: [ 1+ (self sizeOf: aNode next)]
	
]
