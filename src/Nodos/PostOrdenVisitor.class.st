Class {
	#name : #PostOrdenVisitor,
	#superclass : #TreeVisitor,
	#category : #Nodos
}

{ #category : #visiting }
PostOrdenVisitor >> visitTree: aTree [ 
	result ifNil: [result:= ''].
	aTree left ifNotNil: [ :ltree| ltree accept: self ] .
	aTree right ifNotNil: [ :rtree| rtree accept: self ] .
	result:= result,aTree data asString, ' ' .
	
	
]
