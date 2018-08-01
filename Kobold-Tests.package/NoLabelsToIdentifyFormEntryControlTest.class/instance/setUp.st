initialization
setUp

campos := Dictionary new.
campos at:'elementContent'  put:'<input name=\"usuario\" placeholder=\"usuario\" type=\"text\" />'. 
campos at:'threat' put:'NoLabelsToIdentifyFormEntryControls'.
campos at: 'elementHeight' put:'29'. 
campos at: 'elementLeft' put:'8'. 
campos at: 'elementTop' put:'27'. 
campos at: 'elementWidth:' put:'245'. 
campos at: 'parentsList' put:'<form name=\"otro\"></form>\n'. 
campos at: 'threat' put:'NoLabelsToIdentifyFormEntryControls'. 
campos at: 'timestamp' put:'1524691659216'. 
campos at: 'token' put:'0a5ff129-1627-0d00-8b9e-64ff0e3fd33'.
campos at: 'url' put:'http://localhost/accesibilidad/JsLibrary/src/02%20-%20Inputs%20de%20formularios%20sin%20etiquetas%20descriptivas.html'.
campos at: 'waitingTime' put:'2220'.
campos at: 'xpath' put:'html/body/form/input'.
servicio:= EventsParser new.
