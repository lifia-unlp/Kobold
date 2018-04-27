uploaded
mainCssContent
	^ '
	.mainContainer{min-height:400px}
	
	a {color: #70A437;}
	a:focus, a:hover {
    color: #5C7541;
    text-decoration: underline;
	}
	.nav.navbar.navbar-default.navbar-static-top {background: #70A437;}
	.navbar-default .navbar-brand{color: #eee;}

	.navbar-default .navbar-text {color:#eee;}

	.navbar-default .navbar-text {color:#eee;}
	.navbar-default .navbar-link {color:#ddd;}
	.navbar-default .navbar-link:hover {color:#ddd;}
	
	
	
	.btn-success {
    background-image:-webkit-linear-gradient(top,#70A437 0,#419641 100%);
    background-image:-o-linear-gradient(top,#70A437 0,#419641 100%);
    background-image:-webkit-gradient(linear,left top,left bottom,from(#70A437),to(#419641));
    background-image:linear-gradient(to bottom,#70A437 0,#419641 100%);
    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=''#ff70A437'', endColorstr=''#ff419641'', GradientType=0);
}
		
@font-face {
    font-family: ''jesterday_demoregular'';
    src: url(''jesterdaydemo-webfont.woff2'') format(''woff2''),
         url(''jesterdaydemo-webfont.woff'') format(''woff'');
    font-weight: normal;
    font-style: normal;

}
.jumbotron h1{
	font-family: ''jesterday_demoregular''; 
	font-size:8em;
	color: #4A4A4A;
	letter-spacing: 0;
	text-shadow: 0 2px 4px #4A4A4A;
	}
.jumbotron h1 img{margin-left:10px}

.navbar-brand {
    font-family: jesterday_demoregular;
    font-size: 2em;
    padding-top: 20px;
}

	.reporterAction{padding-right:20px}
	.ignore{color:rgb(240,100,100); font-size:.9em}
.register{margin:30px 0}
.jumbotron{background:none; min-height:450px}
.tracking{margin:30px;padding:30px;}

      /* Set the fixed height of the footer here */
      #push,
      #footer {
		margin-top:20px;
		padding:30px;
		color:#eee;
      }
      #footer {
		background-color:#333;
      }






      /* Lastly, apply responsive CSS fixes as necessary */
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          margin-top: 20px;
          padding: 20px;
        }
      }

	.credit {
        margin: 20px 0;
      }
	.muted{color:#999}
	.us-group h5 a{color: black}
	.us-group h5 a:hover{color: #337ab7}
	.media {margin:40px 0}
	.us-group a{cursor:pointer}
	.svg-bg{width:64px;height:64px; padding:16px; background-color:#eee}
	.us-modal{width:700px}

.version-tag {
	color: #70A437;
	font-weight: bold;
}

.version-control {
	cursor: pointer;
	margin: 8px;
}

#version-list {
	margin: 15px;
}

.list-group-item .tag-badge {
	float: none;
}

a.tag-link {
	color: white;
	cursor: pointer;
}

.selectize-control.multi .selectize-input [data-value] { 
	background-image: none;
	background-repeat: none;
	background-color: #777;
	border: #3e8f3e;
	border-radius: 10px;
	font-size: 12px;
    	font-weight: 700;
 }


'