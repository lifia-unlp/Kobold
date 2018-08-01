hashing
tran53HashA: a b: b c: c n: n
	"Python original: (((TRAN[(a+n)&255]^TRAN[b]*(n+n+1))+TRAN[(c)^TRAN[n]])&255)"
	"Adjusted for zero-based array compatibility with original source."

	^((tran at: 1 + (a + n bitAnd: 255))
		bitXor: (tran at: ((1 + b) min:256)) * (n + n + 1))
			+ (tran at: ((1 + (c bitXor: (tran at: 1 + n))) min: 256)) bitAnd: 255