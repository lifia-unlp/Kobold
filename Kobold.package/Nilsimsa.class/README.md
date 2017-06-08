"A nilsimsa code is something like a hash, but unlike hashes, a small change in the message results in a small change in the nilsimsa code. Such a function is called a locality-sensitive hash. "
http://ixazon.dynip.com/~cmeclax/nilsimsa.html

Ported from Python version
https://code.google.com/p/py-nilsimsa/

Create digests with:
	(Nilsimsa new: 'any string') hexDigest 

Compare digests with the class method #compareDigest:with:

See api for more uses
	