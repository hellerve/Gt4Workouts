Class {
	#name : #Gt4WMesoCycle,
	#superclass : #Object,
	#instVars : [
		'name',
		'days',
		'weeks',
		'results'
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
	days := anObject.
	days do: [ :aDay | aDay cycle: self ]
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
Gt4WMesoCycle >> gtViewResults: aView [
	<gtView>
	^ aView forward
		title: 'Results';
		priority: 4;
		object: [ self results ];
		view: #gtViewResults:
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
Gt4WMesoCycle >> gtViewTemplateFor: aView [
	<gtView>
	^ aView textEditor
		title: 'Template';
		priority: 3;
		text: [ self template ];
		aptitude: [ BrGlamorousCodeEditorAptitude ];
		styler: (BrRBTextStyler new
				isForWorkspace: true;
				yourself)
]

{ #category : #accessing }
Gt4WMesoCycle >> initialize [
	super initialize.
	
	results := Gt4WResults new
]

{ #category : #accessing }
Gt4WMesoCycle >> logger [
	^ Gt4MesoCycleLogger new cycle: self
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
Gt4WMesoCycle >> results [
	^ results
]

{ #category : #accessing }
Gt4WMesoCycle >> results: anObject [
	results := anObject
]

{ #category : #accessing }
Gt4WMesoCycle >> schedule [
	^ Gt4WSchedule new cycle: self
]

{ #category : #accessing }
Gt4WMesoCycle >> template [
	^ 'Gt4WMesoCycleBuilder new
	name: ''' , self name
		, ''';
	weeks: ' , self weeks asString
		, ';
	'
		, (';
	' join: (self days collect: #template))
		, ';
	build'
]

{ #category : #accessing }
Gt4WMesoCycle >> weeks [
	^ weeks
]

{ #category : #accessing }
Gt4WMesoCycle >> weeks: anObject [
	weeks := anObject
]
