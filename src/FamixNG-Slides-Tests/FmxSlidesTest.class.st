Class {
	#name : #FmxSlidesTest,
	#superclass : #TestCase,
	#category : #'FamixNG-Slides-Tests'
}

{ #category : #entities }
FmxSlidesTest >> newMooseUri [
	^ FmxUri new
		uri: 'http://moosetechnology.org';
		yourself
]

{ #category : #entities }
FmxSlidesTest >> newPharoUri [
	^ FmxUri new
		uri: 'http://pharo.org';
		yourself
]

{ #category : #entities }
FmxSlidesTest >> newPresentation [
	^ FmxPresentation new
		name: 'test presentation';
		yourself
]

{ #category : #entities }
FmxSlidesTest >> newSlide [
	^ FmxSlide new
]

{ #category : #tests }
FmxSlidesTest >> testPresentationWithSlides [
	| presentation s1 s2 |
	presentation := self newPresentation.
	
	self assert: presentation slides isEmpty.
	
	s1 := self newSlide
				name: 'Introduction';
				presentation: presentation;
				yourself.
	
	self assertCollection: presentation slides hasSameElements: { s1 }.
	
	s2 := self newSlide
				name: 'Conclusion';
				presentation: presentation;
				yourself.
	
	self assertCollection: presentation slides hasSameElements: { s1 . s2 }.
]

{ #category : #tests }
FmxSlidesTest >> testSlideWithUriReferences [
	| slide pharoWebsiteUri ref mooseWebsiteUri ref2 |
	slide := self newSlide
					name: 'Websites';
					yourself.
	pharoWebsiteUri := self newPharoUri.
					
	self assert: slide outgoingReferences isEmpty.
	
	ref := FmxUriReference new
		source: slide;
		target: pharoWebsiteUri.
	
	self assertCollection: slide outgoingReferences hasSameElements: { ref }.
	
	mooseWebsiteUri := self newMooseUri.
	
	ref2 := FmxUriReference new
		source: slide;
		target: mooseWebsiteUri.
	
	self assertCollection: slide outgoingReferences hasSameElements: { ref. ref2 }.
		
]
