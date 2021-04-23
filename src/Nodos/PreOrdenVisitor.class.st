Class {
	#name : #PreOrdenVisitor,
	#superclass : #TreeVisitor,
	#category : #Nodos
}

{ #category : #visiting }
PreOrdenVisitor >> visitTree: aTree [ 
	result ifNil: [result:= ''].
	result:= result,aTree data asString, ' ' .
	aTree left ifNotNil: [ :ltree| ltree accept: self ] .
	aTree right ifNotNil: [ :rtree| rtree accept: self ] .
	
	
]
