uploaded
mouseActivityJsContent
	^ '
/// Evaluation Methods ///
//The following methods are the responsable for storing and analyzing the data.

var MA_hits=0; MA_fails=0; MA_aimless=0;
var MA_totalPathLength=0;

function MoveRegister(){
	this.prevPoint="";
	this.pathLength=0;
	this.axis=[0,0,0,0]; //[-x,+x,-y,+y]
}
		MoveRegister.prototype.clear = function() {
			MA_totalPathLength+=this.pathLength;
			this.pathLength=0;
			this.axis=[0,0,0,0];
		};
		MoveRegister.prototype.addPoint = function(x,y,time) {
		 	
		 	if(this.prevPoint.length!=0){
		 		var point=this.prevPoint.split("@");
		 		if (x-parseInt(point[0])<0)this.axis[0]++; 
		 		if (x-parseInt(point[0])>0)this.axis[1]++; 
		 		if (y-parseInt(point[1])>0)this.axis[2]++; 
		 		if (y-parseInt(point[1])<0)this.axis[3]++; 
		 		
		 		var horizontal=true,vertical=true;
		 		if(this.axis[0]>0 && this.axis[1]>0) horizontal=false;
		 		if(this.axis[2]>0 && this.axis[3]>0) vertical=false;

		 		//fragment mouse movements, eg: Circular movements.
		 		if(!horizontal && !vertical){
		 			MA_aimless++;	this.clear();
				}

			 	var last= this.prevPoint.split("@");
			 	this.pathLength+= Math.sqrt(Math.pow(x-parseInt(last[0]),2)+Math.pow(y-parseInt(last[1]),2)); 
		 	}
			this.prevPoint= x+"@"+y;
		};

//// CAPTURE METHODS //// 
//The followed methods are the responsable for the correctly capture of the user''s mouse movements.

var MA_movement= new MoveRegister();
var MA_stopMoving, MA_lastmove=0;

if(verbose){
setInterval(function(){
	console.log("Mouse Activity-> Hits:"+MA_hits+" Fails:"+MA_fails+" Aimless:"+MA_aimless+" PathLength:"+MA_totalPathLength.toFixed(2));
},1000);
}

function MA_clickAttempt(result){
	clearTimeout(MA_stopMoving);
	var now= new Date().getTime();
	if(now-MA_lastmove<1500){
		if(result){
			if(getSelectionText().length == 0) MA_hits++;
			else MA_aimless++;
		}else{
			MA_fails++;
		}
	}
	MA_movement.clear();
}

$(window).on(''mousemove'',function(e){
	//console.log(e.pageX+"  "+e.pageY);
	clearTimeout(MA_stopMoving);
	
	MA_lastmove= new Date().getTime();
	MA_movement.addPoint(e.pageX,e.pageY,e.timeStamp);
	

	MA_stopMoving=setTimeout(function(){
		var path= MA_movement.pathLength;
		if(path>40){
			MA_aimless++;
		}
		MA_movement.clear();
	},1500);
});

$(window).on("beforeunload",function(){

	MA_movement.clear();
	
	logThreat(''MouseActivity'', {hits:MA_hits, fails:MA_fails, aimless:MA_aimless, pathLength: MA_totalPathLength.toFixed(4)});

/* OR send processed data:

	var activity= MA_hits/(MA_hits+MA_fails+MA_aimless);
	var accuracy= MA_hits/(MA_hits+MA_fails);
	logThreat(''MouseActivity'', {URL:document.URL, Activity: activity, Accuracy: accuracy, , PathLength: MA_totalPathLength.toFixed(4)});

*/
});'