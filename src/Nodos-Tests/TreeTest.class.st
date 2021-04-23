"
A TreeTest is a test class for testing the behavior of Tree
"
Class {
	#name : #TreeTest,
	#superclass : #TestCase,
	#category : #'Nodos-Tests'
}

{ #category : #tests }
TreeTest >> testBasic [ 
	|p1 p2 p3 p4 p5 |
	p1:= Tree new.
	p1 data: 'Melissa'.
	p2:= Tree new.
	p2 data: 'Jhonny'.
	p3:= Tree new.
	p3 data: 'Paula'.
	p1 left: p2.
	p1 right: p3.
	p4:= Tree new.
	p4 data: 'Primo'.
	p5:= Tree new.
	p5 data: 'Tiburcio'.
	p2 right: p4.
	p3 left: p5.
	p1.
]

{ #category : #tests }
TreeTest >> testNumbers [
"pi*r*r+1"
	|op1 op2 op3 var1 var2 const1 visitor |
	op1:= Tree new.
	op1 data: '+'.
	op2:= Tree new.
	op2 data: '*'.
	op3:= Tree new.
	op3 data: '*'.
	var1:= Tree new.
	var1 data: 'pi'.
	var2:= Tree new.
	var2 data: 'r'.
	const1:= Tree new.
	const1 data: 1.
	op1 left: op2.
	op1 right: const1.
	op2 left: var1.
	op2 right: op3.
	op3 left: var2.
	op3 right: var2.
	visitor:= InOrdenVisitor new.
	op1 accept: visitor.
	self assert: visitor result equals: 'pi*r*r+1'.
	visitor:= PreOrdenVisitor new.
	op1 accept: visitor.
	self assert: visitor result equals: '+ * pi * r r 1 '.
	visitor:= PostOrdenVisitor new.
	op1 accept: visitor.
	self assert: visitor result equals: 'pi r r * * 1 + '.
	op1 inspect.
	
	
	
	
]
