Class {
	#name : #Gt4WMesoCycle,
	#superclass : #Object,
	#instVars : [
		'name',
		'days',
		'weeks'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WMesoCycle >> children [
	^ days
]

{ #category : #accessing }
Gt4WMesoCycle >> days [
	^ days
]

{ #category : #accessing }
Gt4WMesoCycle >> days: anObject [
	days := anObject
]

{ #category : #accessing }
Gt4WMesoCycle >> gtViewCycleFor: aView [
	<gtView>
	^ aView tree
		title: 'Cycle';
		priority: 1;
		items: [ self days ];
		children: #children;
		expandAll
]

{ #category : #accessing }
Gt4WMesoCycle >> gtViewScheduleFor: aView [
	<gtView>
	^ aView tree
		title: 'Schedule';
		priority: 2;
		items: [ {self schedule} ];
		children: #children;
		expandUpTo: 2
]

{ #category : #accessing }
Gt4WMesoCycle >> name [
	^ name
]

{ #category : #accessing }
Gt4WMesoCycle >> name: anObject [
	name := anObject
]

{ #category : #accessing }
Gt4WMesoCycle >> printOn: aStream [
	aStream nextPutAll: self name
]

{ #category : #accessing }
Gt4WMesoCycle >> schedule [
	^ Gt4WSchedule new cycle: self
]

{ #category : #accessing }
Gt4WMesoCycle >> weeks [
	^ weeks
]

{ #category : #accessing }
Gt4WMesoCycle >> weeks: anObject [
	weeks := anObject
]
