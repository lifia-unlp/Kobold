examples
sample
	^ self
		xpath: '//*[@id="email"]'
		content:
			'<input type="text" class="form-control short requiredInput" id="email" placeholder="Enter email" />'
		html:
			'<input type="text" class="form-control short requiredInput" id="email" placeholder="Enter email" />'
		parentsList:
			'<div class="form-group"></div>
<form role="form" id="tinyform" action="register_submit_tiny.php" method="post"></form>
<div class="col-md-9"></div>
<div class="row"></div>
<div class="container"></div>
'
		url: 'http://srsite.localhost/tinyform.php'
		boundingBox: (405.5 @ 274 corner: 605.5 @ 308)