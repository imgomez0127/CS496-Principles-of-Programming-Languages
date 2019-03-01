let rec even =  function
	| 0 -> true
	| n -> odd(n-1)
and
	| 0 -> false
	| n -> even(n-1)
