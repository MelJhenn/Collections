Class {
	#name : #Hanoi,
	#superclass : #Object,
	#category : #Nodos
}

{ #category : #'as yet unclassified' }
Hanoi >> transfer: aNumber from: origin to: destination withAux: auxiliar [ 
	|result|
	aNumber isZero ifTrue: [ self error: 'Not a valid number' ].
	aNumber == 1 ifTrue: [ ^'move from ',origin, ' to ',destination ].
	result:= self transfer: aNumber -1 from: origin to: auxiliar  withAux: destination.
	result:= result , '
move from ',origin, ' to ',destination.
	result:= result , String cr ,(self transfer: aNumber -1 from: auxiliar  to: destination  withAux: origin).
	^result.
	

	
]
