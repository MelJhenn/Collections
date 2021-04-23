Class {
	#name : #InOrdenVisitor,
	#superclass : #TreeVisitor,
	#category : #Nodos
}

{ #category : #visiting }
InOrdenVisitor >> visitTree: aTree [ 
	result ifNil: [result:= ''].
	aTree left ifNotNil: [ :ltree| ltree accept: self ] .
	result:= result,aTree data asString .
	aTree right ifNotNil: [ :rtree| rtree accept: self ] .
	
	
]
