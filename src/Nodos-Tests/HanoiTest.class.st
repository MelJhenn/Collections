"
A HanoiTest is a test class for testing the behavior of Hanoi
"
Class {
	#name : #HanoiTest,
	#superclass : #TestCase,
	#category : #'Nodos-Tests'
}

{ #category : #tests }
HanoiTest >> testTransferFromToWithAux [
	|hanoi res|
	hanoi:= Hanoi new.
	self should: [ hanoi transfer: 0 from: 'a' to: 'c' withAux: 'b'] raise: Error.
	res:= hanoi transfer: 1 from: 'a' to: 'c' withAux: 'b'.
	self assert: res equals: 'move from a to c'. 
	res:= hanoi transfer: 2 from: 'a' to: 'c' withAux: 'b'.
	self assert: res equals: 
'move from a to b
move from a to c
move from b to c'. 
res:= hanoi transfer: 3 from: 'a' to: 'c' withAux: 'b'.
	self assert: res equals: 
'move from a to c
move from a to b
move from c to b
move from a to c
move from b to a
move from b to c
move from a to c'. 
]
