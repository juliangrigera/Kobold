*Kobold-RefactoringsServer
fromRESTParameters: aDictionary
	| attributes xpath url |
	attributes := self extractRESTParametersFrom: aDictionary.
	xpath := attributes at: 1.
	url := attributes at: 2.
	^ self on: (DomElement xpath: xpath) urlString: url