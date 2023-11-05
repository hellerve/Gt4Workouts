Class {
	#name : #Gt4WMesoCycleBuilder,
	#superclass : #Object,
	#instVars : [
		'days',
		'name',
		'weeks',
		'rpeRange'
	],
	#category : #'Gt4Workouts-Builder'
}

{ #category : #accessing }
Gt4WMesoCycleBuilder >> add: aPair setsOf: aName [
	days last add: aPair setsOf: aName
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> add: aNumber supersetsOf: supersets [
	days last add: aNumber supersetsOf: supersets
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> addDay: aName [
	days add: (Gt4WDay named: aName)
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> build [
	^ Gt4WMesoCycle new
		name: self name;
		days: days;
		weeks: self weeks;
		rpeRange: self rpeRange
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> initialize [
	days := OrderedCollection new
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> name [
	^ name
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> name: anObject [
	name := anObject
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> rpeRange [
	^ rpeRange
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> rpeRange: anObject [
	rpeRange := anObject
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> weeks [
	^ weeks
]

{ #category : #accessing }
Gt4WMesoCycleBuilder >> weeks: anObject [
	weeks := anObject
]
