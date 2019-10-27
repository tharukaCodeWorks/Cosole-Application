#!/usr/bin/env gst

1 to: 100 do: [:num|
	(num \\ 15 == 0) ifTrue: [
		'FizzBuzz' printNl.
	] ifFalse: [
		(num \\ 5 == 0) ifTrue: [
			'Buzz' printNl.
		] ifFalse: [
			(num \\ 3 == 0) ifTrue: [
				'Fizz' printNl.
			] ifFalse: [
				num printNl.
			]
		]
	]
]

