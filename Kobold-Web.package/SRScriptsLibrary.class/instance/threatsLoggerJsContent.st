uploaded
threatsLoggerJsContent
	^ '
/************************************************************************************************************
											Diacritic accents removal
************************************************************************************************************/
function withoutAccents(str) {

  var defaultDiacriticsRemovalMap = [
    {''base'':''A'', ''letters'':/[\u0041\u24B6\uFF21\u00C0\u00C1\u00C2\u1EA6\u1EA4\u1EAA\u1EA8\u00C3\u0100\u0102\u1EB0\u1EAE\u1EB4\u1EB2\u0226\u01E0\u00C4\u01DE\u1EA2\u00C5\u01FA\u01CD\u0200\u0202\u1EA0\u1EAC\u1EB6\u1E00\u0104\u023A\u2C6F]/g},
    {''base'':''AA'',''letters'':/[\uA732]/g},
    {''base'':''AE'',''letters'':/[\u00C6\u01FC\u01E2]/g},
    {''base'':''AO'',''letters'':/[\uA734]/g},
    {''base'':''AU'',''letters'':/[\uA736]/g},
    {''base'':''AV'',''letters'':/[\uA738\uA73A]/g},
    {''base'':''AY'',''letters'':/[\uA73C]/g},
    {''base'':''B'', ''letters'':/[\u0042\u24B7\uFF22\u1E02\u1E04\u1E06\u0243\u0182\u0181]/g},
    {''base'':''C'', ''letters'':/[\u0043\u24B8\uFF23\u0106\u0108\u010A\u010C\u00C7\u1E08\u0187\u023B\uA73E]/g},
    {''base'':''D'', ''letters'':/[\u0044\u24B9\uFF24\u1E0A\u010E\u1E0C\u1E10\u1E12\u1E0E\u0110\u018B\u018A\u0189\uA779]/g},
    {''base'':''DZ'',''letters'':/[\u01F1\u01C4]/g},
    {''base'':''Dz'',''letters'':/[\u01F2\u01C5]/g},
    {''base'':''E'', ''letters'':/[\u0045\u24BA\uFF25\u00C8\u00C9\u00CA\u1EC0\u1EBE\u1EC4\u1EC2\u1EBC\u0112\u1E14\u1E16\u0114\u0116\u00CB\u1EBA\u011A\u0204\u0206\u1EB8\u1EC6\u0228\u1E1C\u0118\u1E18\u1E1A\u0190\u018E]/g},
    {''base'':''F'', ''letters'':/[\u0046\u24BB\uFF26\u1E1E\u0191\uA77B]/g},
    {''base'':''G'', ''letters'':/[\u0047\u24BC\uFF27\u01F4\u011C\u1E20\u011E\u0120\u01E6\u0122\u01E4\u0193\uA7A0\uA77D\uA77E]/g},
    {''base'':''H'', ''letters'':/[\u0048\u24BD\uFF28\u0124\u1E22\u1E26\u021E\u1E24\u1E28\u1E2A\u0126\u2C67\u2C75\uA78D]/g},
    {''base'':''I'', ''letters'':/[\u0049\u24BE\uFF29\u00CC\u00CD\u00CE\u0128\u012A\u012C\u0130\u00CF\u1E2E\u1EC8\u01CF\u0208\u020A\u1ECA\u012E\u1E2C\u0197]/g},
    {''base'':''J'', ''letters'':/[\u004A\u24BF\uFF2A\u0134\u0248]/g},
    {''base'':''K'', ''letters'':/[\u004B\u24C0\uFF2B\u1E30\u01E8\u1E32\u0136\u1E34\u0198\u2C69\uA740\uA742\uA744\uA7A2]/g},
    {''base'':''L'', ''letters'':/[\u004C\u24C1\uFF2C\u013F\u0139\u013D\u1E36\u1E38\u013B\u1E3C\u1E3A\u0141\u023D\u2C62\u2C60\uA748\uA746\uA780]/g},
    {''base'':''LJ'',''letters'':/[\u01C7]/g},
    {''base'':''Lj'',''letters'':/[\u01C8]/g},
    {''base'':''M'', ''letters'':/[\u004D\u24C2\uFF2D\u1E3E\u1E40\u1E42\u2C6E\u019C]/g},
    {''base'':''N'', ''letters'':/[\u004E\u24C3\uFF2E\u01F8\u0143\u00D1\u1E44\u0147\u1E46\u0145\u1E4A\u1E48\u0220\u019D\uA790\uA7A4]/g},
    {''base'':''NJ'',''letters'':/[\u01CA]/g},
    {''base'':''Nj'',''letters'':/[\u01CB]/g},
    {''base'':''O'', ''letters'':/[\u004F\u24C4\uFF2F\u00D2\u00D3\u00D4\u1ED2\u1ED0\u1ED6\u1ED4\u00D5\u1E4C\u022C\u1E4E\u014C\u1E50\u1E52\u014E\u022E\u0230\u00D6\u022A\u1ECE\u0150\u01D1\u020C\u020E\u01A0\u1EDC\u1EDA\u1EE0\u1EDE\u1EE2\u1ECC\u1ED8\u01EA\u01EC\u00D8\u01FE\u0186\u019F\uA74A\uA74C]/g},
    {''base'':''OI'',''letters'':/[\u01A2]/g},
    {''base'':''OO'',''letters'':/[\uA74E]/g},
    {''base'':''OU'',''letters'':/[\u0222]/g},
    {''base'':''P'', ''letters'':/[\u0050\u24C5\uFF30\u1E54\u1E56\u01A4\u2C63\uA750\uA752\uA754]/g},
    {''base'':''Q'', ''letters'':/[\u0051\u24C6\uFF31\uA756\uA758\u024A]/g},
    {''base'':''R'', ''letters'':/[\u0052\u24C7\uFF32\u0154\u1E58\u0158\u0210\u0212\u1E5A\u1E5C\u0156\u1E5E\u024C\u2C64\uA75A\uA7A6\uA782]/g},
    {''base'':''S'', ''letters'':/[\u0053\u24C8\uFF33\u1E9E\u015A\u1E64\u015C\u1E60\u0160\u1E66\u1E62\u1E68\u0218\u015E\u2C7E\uA7A8\uA784]/g},
    {''base'':''T'', ''letters'':/[\u0054\u24C9\uFF34\u1E6A\u0164\u1E6C\u021A\u0162\u1E70\u1E6E\u0166\u01AC\u01AE\u023E\uA786]/g},
    {''base'':''TZ'',''letters'':/[\uA728]/g},
    {''base'':''U'', ''letters'':/[\u0055\u24CA\uFF35\u00D9\u00DA\u00DB\u0168\u1E78\u016A\u1E7A\u016C\u00DC\u01DB\u01D7\u01D5\u01D9\u1EE6\u016E\u0170\u01D3\u0214\u0216\u01AF\u1EEA\u1EE8\u1EEE\u1EEC\u1EF0\u1EE4\u1E72\u0172\u1E76\u1E74\u0244]/g},
    {''base'':''V'', ''letters'':/[\u0056\u24CB\uFF36\u1E7C\u1E7E\u01B2\uA75E\u0245]/g},
    {''base'':''VY'',''letters'':/[\uA760]/g},
    {''base'':''W'', ''letters'':/[\u0057\u24CC\uFF37\u1E80\u1E82\u0174\u1E86\u1E84\u1E88\u2C72]/g},
    {''base'':''X'', ''letters'':/[\u0058\u24CD\uFF38\u1E8A\u1E8C]/g},
    {''base'':''Y'', ''letters'':/[\u0059\u24CE\uFF39\u1EF2\u00DD\u0176\u1EF8\u0232\u1E8E\u0178\u1EF6\u1EF4\u01B3\u024E\u1EFE]/g},
    {''base'':''Z'', ''letters'':/[\u005A\u24CF\uFF3A\u0179\u1E90\u017B\u017D\u1E92\u1E94\u01B5\u0224\u2C7F\u2C6B\uA762]/g},
    {''base'':''a'', ''letters'':/[\u0061\u24D0\uFF41\u1E9A\u00E0\u00E1\u00E2\u1EA7\u1EA5\u1EAB\u1EA9\u00E3\u0101\u0103\u1EB1\u1EAF\u1EB5\u1EB3\u0227\u01E1\u00E4\u01DF\u1EA3\u00E5\u01FB\u01CE\u0201\u0203\u1EA1\u1EAD\u1EB7\u1E01\u0105\u2C65\u0250]/g},
    {''base'':''aa'',''letters'':/[\uA733]/g},
    {''base'':''ae'',''letters'':/[\u00E6\u01FD\u01E3]/g},
    {''base'':''ao'',''letters'':/[\uA735]/g},
    {''base'':''au'',''letters'':/[\uA737]/g},
    {''base'':''av'',''letters'':/[\uA739\uA73B]/g},
    {''base'':''ay'',''letters'':/[\uA73D]/g},
    {''base'':''b'', ''letters'':/[\u0062\u24D1\uFF42\u1E03\u1E05\u1E07\u0180\u0183\u0253]/g},
    {''base'':''c'', ''letters'':/[\u0063\u24D2\uFF43\u0107\u0109\u010B\u010D\u00E7\u1E09\u0188\u023C\uA73F\u2184]/g},
    {''base'':''d'', ''letters'':/[\u0064\u24D3\uFF44\u1E0B\u010F\u1E0D\u1E11\u1E13\u1E0F\u0111\u018C\u0256\u0257\uA77A]/g},
    {''base'':''dz'',''letters'':/[\u01F3\u01C6]/g},
    {''base'':''e'', ''letters'':/[\u0065\u24D4\uFF45\u00E8\u00E9\u00EA\u1EC1\u1EBF\u1EC5\u1EC3\u1EBD\u0113\u1E15\u1E17\u0115\u0117\u00EB\u1EBB\u011B\u0205\u0207\u1EB9\u1EC7\u0229\u1E1D\u0119\u1E19\u1E1B\u0247\u025B\u01DD]/g},
    {''base'':''f'', ''letters'':/[\u0066\u24D5\uFF46\u1E1F\u0192\uA77C]/g},
    {''base'':''g'', ''letters'':/[\u0067\u24D6\uFF47\u01F5\u011D\u1E21\u011F\u0121\u01E7\u0123\u01E5\u0260\uA7A1\u1D79\uA77F]/g},
    {''base'':''h'', ''letters'':/[\u0068\u24D7\uFF48\u0125\u1E23\u1E27\u021F\u1E25\u1E29\u1E2B\u1E96\u0127\u2C68\u2C76\u0265]/g},
    {''base'':''hv'',''letters'':/[\u0195]/g},
    {''base'':''i'', ''letters'':/[\u0069\u24D8\uFF49\u00EC\u00ED\u00EE\u0129\u012B\u012D\u00EF\u1E2F\u1EC9\u01D0\u0209\u020B\u1ECB\u012F\u1E2D\u0268\u0131]/g},
    {''base'':''j'', ''letters'':/[\u006A\u24D9\uFF4A\u0135\u01F0\u0249]/g},
    {''base'':''k'', ''letters'':/[\u006B\u24DA\uFF4B\u1E31\u01E9\u1E33\u0137\u1E35\u0199\u2C6A\uA741\uA743\uA745\uA7A3]/g},
    {''base'':''l'', ''letters'':/[\u006C\u24DB\uFF4C\u0140\u013A\u013E\u1E37\u1E39\u013C\u1E3D\u1E3B\u017F\u0142\u019A\u026B\u2C61\uA749\uA781\uA747]/g},
    {''base'':''lj'',''letters'':/[\u01C9]/g},
    {''base'':''m'', ''letters'':/[\u006D\u24DC\uFF4D\u1E3F\u1E41\u1E43\u0271\u026F]/g},
    {''base'':''n'', ''letters'':/[\u006E\u24DD\uFF4E\u01F9\u0144\u00F1\u1E45\u0148\u1E47\u0146\u1E4B\u1E49\u019E\u0272\u0149\uA791\uA7A5]/g},
    {''base'':''nj'',''letters'':/[\u01CC]/g},
    {''base'':''o'', ''letters'':/[\u006F\u24DE\uFF4F\u00F2\u00F3\u00F4\u1ED3\u1ED1\u1ED7\u1ED5\u00F5\u1E4D\u022D\u1E4F\u014D\u1E51\u1E53\u014F\u022F\u0231\u00F6\u022B\u1ECF\u0151\u01D2\u020D\u020F\u01A1\u1EDD\u1EDB\u1EE1\u1EDF\u1EE3\u1ECD\u1ED9\u01EB\u01ED\u00F8\u01FF\u0254\uA74B\uA74D\u0275]/g},
    {''base'':''oi'',''letters'':/[\u01A3]/g},
    {''base'':''ou'',''letters'':/[\u0223]/g},
    {''base'':''oo'',''letters'':/[\uA74F]/g},
    {''base'':''p'',''letters'':/[\u0070\u24DF\uFF50\u1E55\u1E57\u01A5\u1D7D\uA751\uA753\uA755]/g},
    {''base'':''q'',''letters'':/[\u0071\u24E0\uFF51\u024B\uA757\uA759]/g},
    {''base'':''r'',''letters'':/[\u0072\u24E1\uFF52\u0155\u1E59\u0159\u0211\u0213\u1E5B\u1E5D\u0157\u1E5F\u024D\u027D\uA75B\uA7A7\uA783]/g},
    {''base'':''s'',''letters'':/[\u0073\u24E2\uFF53\u00DF\u015B\u1E65\u015D\u1E61\u0161\u1E67\u1E63\u1E69\u0219\u015F\u023F\uA7A9\uA785\u1E9B]/g},
    {''base'':''t'',''letters'':/[\u0074\u24E3\uFF54\u1E6B\u1E97\u0165\u1E6D\u021B\u0163\u1E71\u1E6F\u0167\u01AD\u0288\u2C66\uA787]/g},
    {''base'':''tz'',''letters'':/[\uA729]/g},
    {''base'':''u'',''letters'':/[\u0075\u24E4\uFF55\u00F9\u00FA\u00FB\u0169\u1E79\u016B\u1E7B\u016D\u00FC\u01DC\u01D8\u01D6\u01DA\u1EE7\u016F\u0171\u01D4\u0215\u0217\u01B0\u1EEB\u1EE9\u1EEF\u1EED\u1EF1\u1EE5\u1E73\u0173\u1E77\u1E75\u0289]/g},
    {''base'':''v'',''letters'':/[\u0076\u24E5\uFF56\u1E7D\u1E7F\u028B\uA75F\u028C]/g},
    {''base'':''vy'',''letters'':/[\uA761]/g},
    {''base'':''w'',''letters'':/[\u0077\u24E6\uFF57\u1E81\u1E83\u0175\u1E87\u1E85\u1E98\u1E89\u2C73]/g},
    {''base'':''x'',''letters'':/[\u0078\u24E7\uFF58\u1E8B\u1E8D]/g},
    {''base'':''y'',''letters'':/[\u0079\u24E8\uFF59\u1EF3\u00FD\u0177\u1EF9\u0233\u1E8F\u00FF\u1EF7\u1E99\u1EF5\u01B4\u024F\u1EFF]/g},
    {''base'':''z'',''letters'':/[\u007A\u24E9\uFF5A\u017A\u1E91\u017C\u017E\u1E93\u1E95\u01B6\u0225\u0240\u2C6C\uA763]/g}
  ];

  for(var i=0; i<defaultDiacriticsRemovalMap.length; i++) {
    str = str.replace(defaultDiacriticsRemovalMap[i].letters, defaultDiacriticsRemovalMap[i].base);
  }

  return str;

}

/************************************************************************************************************
											jQuery extensions
************************************************************************************************************/
var versionDigits = jQuery.fn.jquery.split(''.'');
var jQueryVersion = versionDigits[0]*100 + versionDigits[1]*10;
var version18= 180;
var version13= 130;


if (jQueryVersion >= version18) {
	jQuery.expr[":"].Contains = jQuery.expr.createPseudo(function(arg) {
	    return function( elem ) {
	        return (withoutAccents(jQuery(elem).text().toUpperCase()).indexOf( withoutAccents(arg.toUpperCase())) >= 0) ;
	    };
	});
} else if (jQueryVersion >= version13) {jQuery.expr['':''].Contains = function(a,i,m){
	 var text = withoutAccents(m[3].toUpperCase());
     return withoutAccents(jQuery(a).text().toUpperCase()).indexOf(text)>=0;
	};
};

/************************************************************************************************************
											Domain-Wide Cookie function
************************************************************************************************************/

var Cookie = {
	set: function(name, rawValue, days) {
		var cookieMaxSize = 4000;
		var domain, domainParts, date, expires, host;
		var value = encodeURIComponent(rawValue);
		if (days) {
			date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			expires = "; expires="+date.toGMTString();
		}
		else { expires = ""; }

		if (value.length <= cookieMaxSize) {
			Cookie.basicSet(name,value,expires,domain);
		}
		else{
			// Split cookie (harcoded to split by 2 for the time being)
			Cookie.basicSet(name+''_parts'', 2, expires);
			Cookie.basicSet(name+''_part1'',value.substring(0,cookieMaxSize), expires );
			Cookie.basicSet(name+''_part2'',value.substring(cookieMaxSize), expires );
		}  
	},

	basicSet: function(name, value, expires, domain){
		host = location.host; 
		if (host.split(''.'').length === 1) {
			// no "." in a domain - it''s localhost or something similar
			document.cookie = name+"="+value+expires+"; path=/";
		}
		else {
			// Remember the cookie on all subdomains.
			domainParts = host.split(''.'');
			domainParts.shift();
			domain = ''.''+domainParts.join(''.'');
			document.cookie = name+"="+value+expires+"; path=/; domain="+domain;

			// check if cookie was successfuly set to the given domain (otherwise it was a Top-Level Domain)
			if (Cookie.basicGet(name) == null || Cookie.basicGet(name) != value ) {
				// append "." to current domain
				domain = ''.''+host; 
				document.cookie = name+"="+value+expires+"; path=/; domain="+domain;
			}
		}
	},

	get: function(name) {
		var encodedValue;
		//Check for splitted cookie
		if (Cookie.basicGet(name+''_parts'') === null) {
			encodedValue = Cookie.basicGet(name);
		}
		else{
			encodedValue = Cookie.basicGet(name+''_part1'') + Cookie.basicGet(name+''_part2'');
		};
		if (encodedValue !== null) { return decodeURIComponent(encodedValue) };
      	return null;
	},

	basicGet: function(name) {
      var nameEQ = name + "=";
      var ca = document.cookie.split('';'');
      for (var i=0; i < ca.length; i++) {
         var c = ca[i];
         while (c.charAt(0)=='' '') {
            c = c.substring(1,c.length);
         }

         if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
      }
      return null;
	},

	erase: function(name) {
		if (Cookie.basicGet(name+''_parts'') === null) {
			Cookie.basicErase(name);
		}
		else{
			Cookie.basicErase(name+''_parts'');
			Cookie.basicErase(name+''_part1'');
			Cookie.basicErase(name+''_part2'');
		}		
	},

	basicErase: function(name) {
		Cookie.set(name, '''', -1);
	}
};

/************************************************************************************************************
											Logger
************************************************************************************************************/
function Logger(serverHost, verbose) { 
	this.clientToken		= $(''meta[name="SelfRefactoringToken"]'').attr(''content'');
	this.host				= serverHost + "/Threats";
	this.refactoringsHost	= serverHost + "/RefactoringsServer";
	this.verbose			= (typeof verbose === "undefined") ? false : verbose;
	this.loggingEnabled		= true;
	var logger				= this;

	if (typeof(this.clientToken) === ''undefined'') {
		console.log(''Self Refactoring: missing token.'');
		this.loggingEnabled=false;
	}
	else{
		console.log(''Self Refactoring v1.37 Logger Loaded.'');
	}
		
	this.logEvent=function(threatName, parameters, asynchronic){
		asynchronic = (typeof asynchronic === "undefined") ? true : asynchronic;
		parameters.token=this.clientToken;
		parameters.threat=threatName;
		
		if (typeof parameters.url == ''undefined'') { parameters.url=document.URL };
		if (typeof parameters.timestamp == ''undefined'') { parameters.timestamp=new Date().getTime() };
		if ((typeof parameters.xpath != ''undefined'') && (typeof parameters.elementAlreadySet == ''undefined'')) {
			element=$(xpathInstance.getElementByXpath(parameters.xpath));
			parameters.elementContent = this.sanitizeContent(element);
			parameters.elementLeft=element.offset().left;
			parameters.elementTop=element.offset().top;
			parameters.elementWidth=element.outerWidth();
			parameters.elementHeight=element.outerHeight();
		};
			
		if (this.loggingEnabled && parameters.xpath != ''/html/body'' && parameters.xpath != ''/html'')
        var xhr=$.ajax({
            type: ''POST'',
            url: this.host,
            timeout:3000,
            data: parameters,
            async:asynchronic
        });
	}
	
	this.loadUsabilityEventsLoggers=function(){
		this.tooltip=new Tooltip();
		this.clickAttempt=new ClickAttempt();
		this.flashScroll=new FlashScroll();
		this.formTimer=new FormTimer();
		this.unfilledForm=new UnfilledForm();
		this.inputTyping=new InputTyping();
		this.optionSelection=new OptionSelection();
		this.searchResults=new Search();
		this.formSubmission=new FormSubmission();
		this.flashNavigation=new FlashNavigation();
		this.zoomOnElement=new ZoomOnElement();
		this.bulkAction=new BulkAction();
		this.navigationPath=new NavigationPath();
		this.longRequest=new LongRequest();
/*		this.pageVisit=new PageVisit();*/
		
	}
	
	this.loadRefactorings=function(){
		$("body").append($("<script />", {
  			id:''refactorings''
			}))		
		$( "#refactorings" ).load( this.refactoringsHost+ ''?token=''+this.clientToken+'' #code'' );
	}
	
	this.sanitizeContent=function(element){
		var elementCopy = $(element).clone();
		$(elementCopy).find(''script'').remove();
		return $.htmlClean($(elementCopy)[0].outerHTML, {allowedAttributes: [["id"],["placeholder"]]})+"";
	}

}

/************************************************************************************************************
											Tooltip Attempt
************************************************************************************************************/
function Tooltip(paramMinimumWaitingTime, paramMaximumWaitingTime, paramLastMoveTime){
	this.minimumWaitingTime=paramMinimumWaitingTime || 1500;
	this.maximumWaitingTime=paramMaximumWaitingTime || 5000;
	this.lastMoveTime=paramLastMoveTime || 0;
	this.threatName="TooltipAttempt";
	this.lastElement=null;
	var tooltip = this;

	$("a, div, img, button, input[type=''button''], input[type=''submit'']").on(''mousemove'', function(e){
		now=e.timeStamp;
		tooltip.waitingTime = now - tooltip.lastMoveTime;
		
		waitingTimeInRange = tooltip.waitingTime>tooltip.minimumWaitingTime && tooltip.waitingTime < tooltip.maximumWaitingTime;
		sameElements = e.currentTarget==tooltip.lastElement;
		relatedElements = ( tooltip.lastElement !== null && 
							($.contains(e.currentTarget, tooltip.lastElement) || 
							$.contains(tooltip.lastElement, e.currentTarget)));
		notALargeContainer = $(e.currentTarget).outerWidth() < 400 && $(e.currentTarget).outerHeight() < 400;
		
		if( waitingTimeInRange && notALargeContainer && ( sameElements || relatedElements ) ){
			var xpath=xpathInstance.getElementXPath(e.currentTarget);
			if (logger.verbose) console.log(tooltip.threatName+" on "+xpath+" for "+tooltip.waitingTime+"ms ");
			logger.logEvent(tooltip.threatName, {xpath:xpath, waitingTime:tooltip.waitingTime});
		}
		tooltip.lastMoveTime=now;
		tooltip.lastElement=e.currentTarget;
	});
	
	$("a, div, img, button, input[type=''button''], input[type=''submit'']").on(''mouseout click'', function(e){
		tooltip.lastElement=null;
	});
}

/************************************************************************************************************
											ClickAttempt
************************************************************************************************************/
function ClickAttempt(paramOc_Ev, paramOc_Elem, paramOc_T){
	this._event=paramOc_Ev || "";
	this.element=paramOc_Elem || "";
	this.selectionText="";
	this.oc_T=paramOc_T || false;
	this.threatName="ClickAttempt";
	var clickAttempt = this;

	$("*").on(''blur change focus focusout load submit focusin beforeunload'',function(e){
		clickAttempt.oc_T=false;
		clickAttempt._event=null;
		clickAttempt.element=null;
	});
	
	$("*").on(''mousedown'',function(e){
		if(clickAttempt.selectionText.length==0){
			clickAttempt.selectionText= clickAttempt.getSelectionText();
			clickAttempt._event=e;
			clickAttempt.element= e.currentTarget;
			clickAttempt.oc_T=true;
			setTimeout(''logger.clickAttempt.timeout_trigger(logger)'', 100);
		}
		e.stopPropagation();
	});
	
	$("*").on(''mouseup'',function(e){	
		setTimeout(''logger.clickAttempt.selectionText=logger.clickAttempt.getSelectionText()'', 25);
		e.stopPropagation();
	});	

	this.getSelectionText=function() {
		var text = "";
		if (window.getSelection) {
			text = window.getSelection().toString();
		} else if (document.selection && document.selection.type != "Control") {
			text = document.selection.createRange().text;
		}
		return text;
	}


	this.timeout_trigger=function(logger){
		notALargeContainer = $(this.element).outerWidth() < 1500 && $(this.element).outerHeight() < 600;
		if(	this.oc_T && 
			notALargeContainer &&
			$(this.element).attr(''role'')!=''button'' && 
			$(this.element).css(''cursor'')!=''pointer'' &&
			this.getSelectionText().length==0 && 
			this.element.tagName!=''INPUT'' && 
			this.element.tagName!=''BUTTON'' && 
			this.element.tagName!=''OPTION'' && 
			this.element.tagName!=''A'' && 
			this.element.tagName!=''SELECT'' && 
			this.element.tagName!=''BODY'' && 
			this.element.tagName!=''HTML'' && 
			($(this.element).parents(''a'').length == 0 || (
				$(this.element).parents(''a'').length == 1
				&& $(this.element).parents(''a'').first().first()[0].getAttribute(''href'')==''#''
				))){
			var xpath=xpathInstance.getElementXPath(this.element);
			var now=new Date().getTime();
			if (logger.verbose) console.log(this.threatName+" on "+xpath);
			logger.logEvent( this.threatName, {xpath:xpath} );
			if (typeof MA_clickAttempt == ''function'') MA_clickAttempt(false);
		}
		else if (typeof MA_clickAttempt == ''function'') MA_clickAttempt(true);
	}
}

/************************************************************************************************************
											FlashScroll
************************************************************************************************************/
function FlashScroll(minSteps, maxScrollingTime, paramDwellingTime, paramScrollingStartingTime){
    this.minimumSteps=minSteps || 3;
	this.maximumScrollingTime=maxScrollingTime || 2000;
	this.dwellingTime=paramDwellingTime || 1500;
	this.scrollingStartingTime=paramScrollingStartingTime || 1500;
	this.timer;
	this.threatName="FlashScrolling",

	this.startingTop= 0;
	this.scrollingInitiated= false;
    this.steps=0;
	var flashScroll = this;


	$(window).on(''scroll'', function(e){
		if (!flashScroll.scrollingInitiated) {
			flashScroll.scrollingInitiated=true;
			flashScroll.scrollingStartingTime=new Date().getTime();
			flashScroll.startingTop=$(window).scrollTop();
		}
		else{
			flashScroll.steps++;
		}
		clearTimeout(flashScroll.timer);
		flashScroll.timer=setTimeout(''logger.flashScroll.flush(logger)'', flashScroll.dwellingTime);
	});


	this.flush=function(logger){
		var currentTop=$(window).scrollTop();
		var scrolledLength=Math.abs(this.startingTop-currentTop);
		var scrollingEndingTime=(new Date().getTime())-this.dwellingTime;
		var scrollingTime=scrollingEndingTime-this.scrollingStartingTime;
		if (this.steps>this.minimumSteps && 
			scrolledLength>$(window).height() && 
			scrollingTime < this.maximumScrollingTime)
			{
				if (logger.verbose) 
					console.log(flashScroll.threatName+" from "+this.startingTop+" to "+currentTop+" in "+scrollingTime/1000);
				logger.logEvent(
					flashScroll.threatName, 
					{timestamp:scrollingEndingTime, time:scrollingTime, initialTop:this.startingTop, finalTop:currentTop} );
		}
		flashScroll.scrollingInitiated=false;
		this.steps=0;
	}
}

/************************************************************************************************************
											FormTimer
************************************************************************************************************/
function FormTimer(){
	this._forms=document.forms;
	this.startTimeForForm = [];
	var formTimer = this;

	for(i=0;i<formTimer._forms.length;i++){
		$(formTimer._forms[i]).one("keypress",(function(){
			var now = $.now();
			var key = xpathInstance.getElementXPath(this);
			formTimer.startTimeForForm[key]=now;
		}));
	}
	
	this.calculateTime=function(xpath){
		var time = 0;
		if (this.startTimeForForm && this.startTimeForForm[xpath])
			time = $.now()-this.startTimeForForm[xpath];
		return time;
	}

}


/************************************************************************************************************
											UnfilledForm
************************************************************************************************************/
function UnfilledForm(){
	this.submittedForms = [];
	this.threatName="UnfilledForm";
	var unfilledForm = this;

	$(''form'').submit(function(e){
  		var key = xpathInstance.getElementXPath(this);
		unfilledForm.submittedForms[key] = true;
	})

	$(window).on(''beforeunload'', function() {
	  var url=document.URL;
	  var allowedTypes = ["text","password","textarea","date"];
	  var forms=document.forms;
	
	  for(i=0;i<forms.length;i++){
	  		var key = xpathInstance.getElementXPath(forms[i]);
			formStarted = (typeof logger.formTimer.startTimeForForm[key]  !== ''undefined'');
			formSubmitted = (typeof unfilledForm.submittedForms[key]  !== ''undefined'');
			formAbandoned = (formStarted && !formSubmitted);
			if (formAbandoned){
		  		var time = logger.formTimer.calculateTime(key);
				if (logger.verbose) console.log(unfilledForm.threatName+" on "+key+" on "+url+" after "+time+"ms");
				logger.logEvent( unfilledForm.threatName, {url:url, xpath:key, time:time}, false);
				}
	  }
	});
}

/************************************************************************************************************
											Search
************************************************************************************************************/
function Search(){
	this.threatName="Search";
	var resultFollowed=false;
	var search = this;
	
	this.initialize=function(){
		if(Cookie.get("formSearchHashCode")){
		   console.log("Found the cookie formSearchHashCode");
	       var lastCookie = JSON.parse(Cookie.get("formSearchHashCode"));
	       var lastHash = lastCookie.hashCode;
	       var sourceForm = xpathInstance.getElementByXpath(lastCookie.xpath);
		   
	       if((lastCookie.isSearchForm) && (lastCookie.searchQuery)){
	        		foundResults = this.hasSearchResult(lastCookie.searchQuery);
	        		var extraParameters={foundResults:foundResults};
					
					if (logger.verbose) {text = foundResults?'''':''no '';console.log("Search detected with "+text+"results not logged still.")};
					$(window).on(''beforeunload'', function(){
						extraParameters.resultFollowed = resultFollowed;		        
	        			logger.logEvent(search.threatName, $.extend(lastCookie, extraParameters));
		        		if (logger.verbose){
	        				text = foundResults?'''':''no '';
	        				console.log("Search at "+document.URL+" with "+text+"results | "+lastCookie.xpath);
	        			};

					});
	       }
			Cookie.erase("formSearchHashCode");
		}
	}
	this.hasSearchResult=function(searchQuery){
		var resultsLinkSomewhere = false;
		var low = searchQuery.toLowerCase();
		var unaccented = withoutAccents(searchQuery);

		var results = $(''[id*="esult"]:Contains("''+low+''"), [class*="esult"]:Contains("''+low+''"), li:Contains("''+low+''"), td:Contains("''+low+''"), dl:Contains("''+low+''"), dd:Contains("''+low+''"), [id*="esult"]:Contains("''+unaccented+''"), [class*="esult"]:Contains("''+unaccented+''"), li:Contains("''+unaccented+''"), td:Contains("''+unaccented+''"), dl:Contains("''+unaccented+''"), dd:Contains("''+unaccented+''")'');
		// we take divs as a different case since they''re too common
		var divResults = $(''div:Contains("''+low+''")'');
		var legitDivResults = [];
		divResults.each(function() {
			notALargeContainer = $(this).outerHeight() <= 400;
			if (notALargeContainer) legitDivResults.push( this );
		});				

		if (legitDivResults.length>2) $.merge(results,legitDivResults);

		results.each(function() {
		  links = $( this ).find( "a" );
		  if (links.size()>0) resultsLinkSomewhere = true;
		  links.on(''click'',function(){resultFollowed=true});
		});

		return (resultsLinkSomewhere);
	}
	
	this.initialize();
	
}

/************************************************************************************************************
											OptionSelection
************************************************************************************************************/
function OptionSelection(){
	this.defaultIndex = [];
	var optionSelection = this;

	this.initialize=function(){
		var options = $( "select option:selected" );
		for (i=0; i<options.length; i++){
	  		var key = xpathInstance.getElementXPath(options[i]);
			optionSelection.defaultIndex[key] = options[i].index;
			}
			
		var checked = $( ":radio:checked" );
		for (i=0; i<checked.length; i++){
			var radioSetName = checked[i].name;
			var siblingRadios = $.find(":radio[name=''"+radioSetName+"'']");
			var index = $(siblingRadios).index(checked[i]);
	  		var key = xpathInstance.getElementXPath(checked[i]);
			optionSelection.defaultIndex[key] = index;
			}
		
		$( "form" ).submit(function(e) {
			var parentForm = e.currentTarget;
			
			var options = $(e.currentTarget).find( "select option:selected" );
			for (i=0; i<options.length; i++){
				var threatName = "SelectOptionSelection";
				var xpath = xpathInstance.getElementXPath($(options[i]).closest("select")[0]);
	  			var key = xpathInstance.getElementXPath(options[i]);
				var index = options[i].index;
				var text = options[i].text;
				var notDefaultOption = (optionSelection.defaultIndex[key] != index);
				if (logger.verbose) console.log(threatName+" with text "+text+" and index position "+index);
				logger.logEvent(threatName, {xpath:xpath, selectionIndex:index, selectionText:text, optionChanged:notDefaultOption});
			}
			
			var radios = $(e.currentTarget).find( ":radio:checked" );
			for (i=0; i<radios.length; i++){
				var threatName = "RadioButtonSelection";
				var radioSetName = radios[i].name;
				var xpath = xpathInstance.getElementXPath(parentForm);
	  			var key = xpathInstance.getElementXPath(radios[i]);
				var siblingRadios = $(e.currentTarget).find(":radio[name=''"+radioSetName+"'']");
				var index = siblingRadios.index(siblingRadios.filter('':checked'').first());
				var notDefaultOption = (optionSelection.defaultIndex[key] != index);
				if (logger.verbose) console.log(threatName+" for radioset ''"+radioSetName+"'' at index "+index);
				logger.logEvent(threatName, {xpath:xpath, name:radioSetName, selectionIndex:index, optionChanged:notDefaultOption});
			}
		});
	}
	this.initialize();

}

/************************************************************************************************************
											LongRequest
************************************************************************************************************/
function LongRequest(paramExitTime, paramSourcePage, paramTolerance, paramWaitLimit){
	this.exitTime=paramExitTime || 50;
	this.sourcePage=paramSourcePage || 50;
	this.tolerance=paramTolerance || 5000; 
	this.waitLimit=paramWaitLimit || 30000; 
	this.threatName=''LongRequest'';

	$(document).ready(function(){
		$(window).on("beforeunload",function(){
			now=new Date().getTime();
			currentURL=document.URL;
			Cookie.set("sourcePage", JSON.stringify({url:currentURL,exitTime:now}));
		});

		$(window).on("load",function(){
			if (Cookie.get("sourcePage")){
				logger.longRequest.sourcePage=JSON.parse(Cookie.get("sourcePage"));
				now=new Date().getTime();
				currentURL=document.URL;
				wait=now - logger.longRequest.sourcePage.exitTime;
				if (wait > logger.longRequest.tolerance && wait < logger.longRequest.waitLimit) {
					if (logger.verbose) console.log(''Waiting time of ''+wait);
					logger.logEvent(logger.longRequest.threatName, {sourceURL: logger.longRequest.sourcePage.url, targetURL:currentURL, time:wait})
					};
				Cookie.erase("sourcePage");
			}
		});
	});
}


/************************************************************************************************************
											InputTyping
************************************************************************************************************/
function InputTyping(paramCurrentInput, paramCorrection,paramFocusTime, paramKeyStrokes){
	this.currentInput=paramCurrentInput || false; 
	this.correction=paramCorrection || false;
	this.focusTime=paramFocusTime || 0;
	this.keystrokes=paramKeyStrokes || 0;
	this.threatName=''TextInputTyping'';
	this.searchTerms=["cc-number", "ccnumber", "cc number", "creditcard", "credit-card", "credit card", "ccard", "c-card", "card number", "cardnumber","card-number"];
	var inputTyping = this;

	this.isCreditCardInput=function(input){
		var ccRegex = new RegExp("^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|6(?:011|5[0-9]{2})[0-9]{12}|(?:2131|1800|35\d{3})\d{11})$");
		ccNumber = input.value.replace(/\s+/g, '''');
	    var isCCNumber = ccRegex.test(ccNumber);
		hasCCIndication = this.hasCCIndication(input);
		return isCCNumber || hasCCIndication
	}
	
	this.hasCCIndication=function(input){
		for (var i = this.searchTerms.length - 1; i >= 0; i--){
			this.found=this.found||(input.outerHTML.toLowerCase().indexOf(this.searchTerms[i])!=-1);
			label = $(''label[for="''+input.id+''"]'');
			if (label.length) // If found label
				this.found=this.found||(label[0].outerHTML.toLowerCase().indexOf(this.searchTerms[i])!=-1);
			}
		return this.found;
	};

	$("input").on(''focus blur keypress'',function(e){
		var inputType=e.currentTarget.type;
		if (inputType=="text" || inputType=="password" ) {
			if (e.type=="focus"){ 
				inputTyping.currentInput=e.currentTarget;
				inputTyping.focusTime=new Date().getTime();
				inputTyping.keystrokes=0; 
				inputTyping.correction=(inputTyping.currentInput.value!='''')
			}
			if (e.type=="keypress") { inputTyping.keystrokes++;}
			if (e.type=="blur" && inputTyping.keystrokes>0){				
				var value=e.currentTarget.value,
					xpath=xpathInstance.getElementXPath(e.currentTarget),
					now=new Date().getTime(),
					typingTime= now - inputTyping.focusTime;
				if (inputType=="password") {value="********"; inputTyping.keystrokes=8};
				if (inputTyping.isCreditCardInput(e.currentTarget)) {value="**** **** **** ****"; inputTyping.keystrokes=16};
			
				if (logger.verbose) console.log(inputTyping.threatName+" on "+xpath+": ''"+value+"''"+((inputTyping.correction)?''(c)'':''''));
				logger.logEvent( inputTyping.threatName, {xpath:xpath, text:value, keystrokes:inputTyping.keystrokes, time:typingTime, correction:inputTyping.correction} );
				inputTyping.keystrokes=0;
			}
		};
	});

}	


/************************************************************************************************************
											BulkAction
************************************************************************************************************/
function BulkAction(paramMinimumListSize){
	this.minimumListSize=paramMinimumListSize || 4; 
	this.threatName="BulkAction";
	this.allCheckboxes=$( ":checkbox" );
	this.checkedCount=this.allCheckboxes.filter( ":checked" ).length;
	this.lefts={};
	this.hasListOfItems=false;	
	this.customCheckboxes = $(''[class*="checkbox"], [role*="checkbox"]'').filter(function(index){ 
								checkboxWidth = $(this).width();
								proportionDifference = Math.abs(($(this).width() / $(this).height()) - 1);
								return (proportionDifference < 0.2) && (checkboxWidth<30);
							});		
	var bulkAction = this;
	
	this.initialize=function(){
		$.each($.merge(bulkAction.allCheckboxes, bulkAction.customCheckboxes), function( index, value ) {
	  		leftPosition = $(value).offset().left;
			if (typeof(bulkAction.lefts[leftPosition])==''undefined'')
				bulkAction.lefts[leftPosition]=1;
			else
				bulkAction.lefts[leftPosition]++;
		});
		$.each(bulkAction.lefts, function( index, value ) {
			if (value>bulkAction.minimumListSize) {
					bulkAction.hasListOfItems=true;
				};
		});
		$(document).on(''change'', '':checkbox'', function(e) {
			if (e.currentTarget.checked) 
				bulkAction.checkedCount++;
			else
				bulkAction.checkedCount--;			
		});
	}
	
	function verifyBulk(e){
		allUpdatedCheckboxes=$( ":checkbox" );
		updatedCheckedCount=allUpdatedCheckboxes.filter( ":checked" ).length;
		if (bulkAction.hasListOfItems &&
			bulkAction.checkedCount >= 1 &&
			updatedCheckedCount == 0) {
			var xpath=xpathInstance.getElementXPath(e.currentTarget);
			if (logger.verbose) console.log(bulkAction.threatName+" on "+xpath+" for "+bulkAction.checkedCount+" items");
			logger.logEvent( bulkAction.threatName, {xpath:xpath, checkedItems:checkedCount} );
			bulkAction.allCheckboxes=allUpdatedCheckboxes;
			bulkAction.checkedCount=updatedCheckedCount;
		};
	}
	
	$( "*" ).click(function(e) {
		setTimeout(verifyBulk, 2000, e);
	});
	
	this.initialize();
}


/************************************************************************************************************
											XpathProcessor
************************************************************************************************************/
function XpathProcessor(){
	this.getElementByXpath=function(path){
		return document.evaluate(path, document, null, 9, null).singleNodeValue;
	};

	this.getElementTreeXPath=function(element){
		var paths = [];
		for (; element && element.nodeType == 1; element = element.parentNode){
			var index = 0;
			for (var sibling = element.previousSibling; sibling; sibling = sibling.previousSibling){
				if (sibling.nodeType == Node.DOCUMENT_TYPE_NODE)
					continue;
				if (sibling.nodeName == element.nodeName)
					++index;
			}
			var tagName = element.nodeName.toLowerCase();
			var pathIndex = (index ? "[" + (index+1) + "]" : "");
			paths.splice(0, 0, tagName + pathIndex);
		}
		return paths.length ? "/" + paths.join("/") : null;
    };


	this.getElementXPath=function(element){
		if (element && element.id)
			return ''//*[@id="'' + element.id + ''"]'';
		else
			return xpathInstance.getElementTreeXPath(element);
    };

	this.getXPath=function(element){
		var paths = [];
		for (; element && element.nodeType == 1; element = element.parentNode){
			var index = 0;
			for (var sibling = element.previousSibling; sibling; sibling = sibling.previousSibling){
				if (sibling.nodeType == Node.DOCUMENT_TYPE_NODE)
					continue;
				if (sibling.nodeName == element.nodeName)
					++index;
			}
			var tagName = element.nodeName.toLowerCase();
			var unique=true;
			for (sibling = element.nextSibling; sibling; sibling = sibling.nextSibling){
				if (sibling.nodeType == Node.DOCUMENT_TYPE_NODE) continue;
				if (sibling.nodeName == element.nodeName){
					unique=false;
					break;
				}
			}
			var pathIndex = ( !unique ? "[" + (index+1) + "]" : "");          
			paths.splice(0, 0, tagName + pathIndex);
		}
		return paths.length ? "/" + paths.join("/") : null;
	};

	    
    this.clearXpath=function(xpath){
        return xpath.replace(/\d+/g, "*");
    };

}

/************************************************************************************************************
											FlashNavigation
************************************************************************************************************/
function FlashNavigation(paramMaximumTime){
	this.maximumTime =paramMaximumTime || 4000;
	this.loadTime;
	this.timeoutTrigger;
	this.threatName="FlashNavigation";
	var flashNavigation=this;
	
	this.flushCookies=function(){
		Cookie.erase("lastClickedAnchor");
		Cookie.erase("lastVisited");
	}

	this.initialize=function(){
		$(window).on("unload",function(){});

		$("a").on(''click'', function(e){
			if ( ! Cookie.get("lastClickedAnchor"))
				Cookie.set("lastClickedAnchor", JSON.stringify({ 
					url:document.URL,
					xpath:xpathInstance.getElementXPath(e.currentTarget),
					timestamp:new Date().getTime()
					})
				);
			
		});
		$(window).on("beforeunload",function(){
			now=new Date().getTime();
			currentURL=document.URL;
			timeVisiting=now-flashNavigation.loadTime;
			if (Cookie.get("lastClickedAnchor")){
				lastClick=JSON.parse(Cookie.get("lastClickedAnchor"));
				if (lastClick.url!=currentURL && timeVisiting<flashNavigation.maximumTime)
					Cookie.set("lastVisited", JSON.stringify({url:currentURL,timestamp:now,time:timeVisiting}));
				}
		});
	};

//	$( document ).ready(function() {
	
	window.onpageshow= function() {
		flashNavigation.loadTime=new Date().getTime();
		if (Cookie.get("lastClickedAnchor") && Cookie.get("lastVisited")) {
			lastVisited=JSON.parse(Cookie.get("lastVisited"));
			lastClick=JSON.parse(Cookie.get("lastClickedAnchor"));
		
			if (lastClick.url==document.URL) {

				if (logger.verbose) console.log(flashNavigation.threatName+" from "+lastClick.xpath+" to "+lastVisited.url+" in "+lastVisited.time);
				logger.logEvent(flashNavigation.threatName, {xpath:lastClick.xpath, url:lastClick.url, time:lastVisited.time} );
				};
			flashNavigation.flushCookies();
			}
		else
			setTimeout(''logger.flashNavigation.flushCookies()'', flashNavigation.maximumTime);
	}
//	});	
		this.initialize();

}

 
/************************************************************************************************************
											NavigationPath
************************************************************************************************************/
function NavigationPath(paramMinimumNavigations, paramMaximumTime, paramPath, paramExpired){
	this.minimumNavigations=paramMinimumNavigations || 2;
	this.maximumTime=paramMaximumTime || 3000; 
	this.path=paramPath || false;
	this.expired=paramExpired || false;
	this.threatName="NavigationPath";
	var navigationPath = this;

	this.initialize=function(){	
		setTimeout(''logger.navigationPath.lastNodeReached(logger)'', navigationPath.maximumTime);
		$("a").on(''click'', function(e){
			first=!Cookie.get("path");
			if (first) navigationPath.path={numberOfNodes:0};
			if (first || !navigationPath.expired) {
				if (Cookie.get("path")) navigationPath.path=JSON.parse(Cookie.get("path"));
				nodeNumber=navigationPath.path.numberOfNodes+1;
				navigationPath.path.numberOfNodes=nodeNumber;
				navigationPath.path[''anchor''+nodeNumber]=xpathInstance.getElementXPath(e.currentTarget);
				navigationPath.path[''url''+nodeNumber]=document.URL;
				navigationPath.path[''targetURL''+nodeNumber]=e.currentTarget.href;
				navigationPath.path[''timestamp''+nodeNumber]=new Date().getTime();
				Cookie.set("path", JSON.stringify(navigationPath.path));
			};
		});
	};
	
	this.lastNodeReached=function(logger){
		if (Cookie.get("path")){
			path=JSON.parse(Cookie.get("path"));
			path.url=path.url1;
			if (path.numberOfNodes >= this.minimumNavigations){
				logger.logEvent(this.threatName, path);
				if (logger.verbose) console.log("Path:"+JSON.stringify(path));
			};
		}
		expired=true;
		Cookie.erase("path");
	};
	this.initialize();
}


/************************************************************************************************************
											FormSubmission
************************************************************************************************************/
function FormSubmission(){
	this.searchTerms=["search", "buscar", "b&uacute;squeda", "suche", "ricerca"];
	this.found=false;
	this.threatName="FormSubmission";
	var fv_tolerance = 1500;
	var submitted = false;
	var formSubmission = this;
	
	
	this.initialize=function(){	
		if(Cookie.get("formSubmissionHashCode")){
		   var lastCookie = JSON.parse(Cookie.get("formSubmissionHashCode"));
		   var lastHash = lastCookie.hashCode;
		   var sourceForm = xpathInstance.getElementByXpath(lastCookie.xpath);
		   if (sourceForm !== null){
				validation=(lastHash!=currentHash);
				var failed = lastCookie.isSearchForm?''false'':''true'';
				var validationType=validation?''server'':''none'';
				var extraParameters={failed:failed, validation:validationType}; 
				if (logger.verbose){
					validationLogMessage=validation?''with messages'':''with no messages'';
					failedText=(failed==''true'')?"failed (server) ":"success ";					
					console.log("FormSubmission "+failedText+validationLogMessage+" at "+document.URL+" | "+lastCookie.xpath);
				};
				logger.logEvent(formSubmission.threatName, $.extend(lastCookie, extraParameters), true); 
			}
			else{
				if (logger.verbose) console.log("FormSubmission success at "+lastCookie.url+" | "+lastCookie.xpath);
				var extraParameters={failed:''false'', validation:''none''};
				logger.logEvent(formSubmission.threatName, $.extend(lastCookie, extraParameters), true); 
			}
			Cookie.erase("formSubmissionHashCode");
		}

		$(''form'').on(''submit'',function(){			
			submitted=true;
			var form=xpathInstance.getElementXPath(this);
			var element = $(this);
			var time = logger.formTimer.calculateTime(form);
			var cookie = {
				url:document.URL,
				xpath:form,
				hashCode:currentHash,
				isSearchForm:formSubmission.isSearchForm(element),
				elementLeft:element.offset().left,
				elementTop:element.offset().top,
				elementWidth:element.outerWidth(),
				elementHeight:element.outerHeight(),
				elementAlreadySet:true,
				elementContent:logger.sanitizeContent(element),
				time:time
				}
			//If searchForm, save search param too
			if(formSubmission.isSearchForm(element)){
				cookie[''searchQuery''] = element.find(''input, textarea'').not('':input[type=button], :input[type=submit], :input[type=reset]'').val();
				Cookie.set("formSearchHashCode", JSON.stringify(cookie));
			}
			Cookie.set("formSubmissionHashCode", JSON.stringify(cookie));
			setTimeout(function(){
				var newHash=formSubmission.hashCode($(document).text());   
				submitted=false;
				validation=(newHash!=currentHash);
				if (logger.verbose){
					validationLogMessage=validation?''with messages'':''with no messages'';
					console.log("FormSubmission failed (client) "+validationLogMessage+" at "+document.URL+" | " + form);};
				var failed = cookie.isSearchForm?''false'':''true'';
				var extraParameters={failed:failed, validation:''client''};
				logger.logEvent(formSubmission.threatName, $.extend(cookie, extraParameters)); 

			},fv_tolerance);
		});

		$(window).on("beforeunload",function(){
			if(!submitted){
			  Cookie.erase("formSubmissionHashCode");
			}
		});
		var currentHash = this.hashCode($(document).text());

	}
	
	this.isSearchForm=function(form){
		for (var i = this.searchTerms.length - 1; i >= 0; i--)
			this.found=this.found||(form[0].outerHTML.toLowerCase().indexOf(this.searchTerms[i])!=-1);
		return this.found;
	};

	this.hashCode=function(string){
		var hash = 0;
		var len = string.length;
		if (len == 0) return hash;
		for (i = 0; i < string.length; i++) {
			char = string.charCodeAt(i);
			hash = ((hash<<5)-hash)+char;
			hash = hash & hash; // Convert to 32bit integer
		}
		return hash;
	};
	
	this.initialize();
	
}



/************************************************************************************************************
											PageVisit
************************************************************************************************************/
function PageVisit(paramMinInterrutTime, paramLastMoveTime){
	this.minInterrutTime=paramMinInterrutTime || 15000 
	this.lastMoveTime=paramLastMoveTime || this.timeStamp; // para que no ingrese directamente al cargar la paguina
	this.interrutions={numOfInterruptions:0,startPageVisit:$.now()};

	this.threatName="PageVisit";

	$(document).ready(function(event){
			
		$(document).on(''mousemove click scroll keypress'',function(e){ //cuando lo descargo tendria que tomarlo como evento tambien?
			timeNow=e.timeStamp;
			logger.pageVisit.interval=timeNow - logger.pageVisit.lastMoveTime;
			if(logger.pageVisit.interval > logger.pageVisit.minInterrutTime){
				//logeo la interrupcion
				logger.pageVisit.interrutions.numOfInterruptions++;
				interruption={startTime:timeNow-logger.pageVisit.interrutions["startPageVisit"], duration:logger.pageVisit.interval };
				logger.pageVisit.interrutions[logger.pageVisit.interrutions.numOfInterruptions]=interruption;
				}
			//guardo el tiempo del ultimo movimiento	
			logger.pageVisit.lastMoveTime=timeNow;
		});
		//En la descarga envio la informacion de la visita
		$(window).bind(''beforeunload'', function(){
				if (logger.verbose) console.log("Interrupciones:"+JSON.stringify(logger.pageVisit.interrutions));
				//aca enviaria la info
				logger.logEvent(logger.pageVisit.threatName, logger.pageVisit.interrutions);
		});
	});
}


/************************************************************************************************************
											ZoomOnElement
************************************************************************************************************/
function ZoomOnElement(zoomAmount){
	this.threatName=''ZoomOnElement'';
	var zoomOnElement = this;
	var currentMousePos = { x: -1, y: -1 };
	var zoomAmount = 0;
	var alreadyZoomed = false;

	$(document).ready(function(){
	    $(document).mousemove(function(event) {
	        currentMousePos.x = event.pageX;
	        currentMousePos.y = event.pageY;
	    });

        $(window).resize(function(e) {

	        var elementMouseIsOver = document.elementFromPoint(currentMousePos.x, currentMousePos.y);

	        //Seteamos el mayor zoom del set de eventos
			zoomAmount = (window.devicePixelRatio > zoomAmount)? window.devicePixelRatio: zoomAmount;

	        var xpath = xpathInstance.getElementXPath(elementMouseIsOver);
	        var textSize = 0;

	        // con esto evitamos el caso en el que se haga zoom desde la barra de herramientas,
	        // en cuyo caso el mouse no estaria sobre ningun elemento
	        if (xpath != null){
	        	// con esto evitamos el caso en el que el mouse esta en el body
	        	if ($(elementMouseIsOver).prop("tagName") != "BODY"){
	        		      		
	        		if ($(elementMouseIsOver).prop("tagName") != "IMG"){
	        			textSize = $(elementMouseIsOver).css(''font-size'');
	        			textSize = textSize.split("px")[0];
	        		}
	        		
	        		//Si es el primer zoom del set, entramos y esperamos a que se termine de zoomear
	        		if (!alreadyZoomed){
	        			alreadyZoomed = true;
	        			setTimeout(function(){ 
	        				logger.logEvent(zoomOnElement.threatName, {xpath: xpath, zoomAmount:zoomAmount, textSize:textSize });
	        				alreadyZoomed = false;
	        				zoomAmount = 0;
	        		  	}, 750);
	        		}	
	        	}
	        }    
        });
    });}
	'