var width = 20;
function move()
{
	var i = document.getElementById('myBar');
	if(width <= 100)
	{
		width++;
		i.style.width = width + "%";
		
	}
}
var width2 = 50;
function movee()
{
	var i = document.getElementById('myBar2');
	if(width2 <= 100)
	{
		width2++;
		i.style.width = width2 + "%";
		
	}
}
var width3 = 30;
function moveee()
{
	var i = document.getElementById('myBar3');
	if(width3 <= 100)
	{
		width3++;
		i.style.width = width3 + "%";
		
	}
}
function validate()
{

	var mail = document.getElementById('email').value;

	var regx = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

	if(mail.match(regx))
{
return true;
}else{
alert("Please enter a valid Email!");
return false;
}
}



var i = 0; 			// Start Point
var images = [];	// Images Array
var time = 3000;	// Time Between Switch
	 
// Image List
images[0] = "images/slide1.jpg";
images[1] = "images/slide2.jpg";
images[2] = "images/slide3.jpg";
images[3] = "images/slide4.jpg";
images[4] = "images/slide5.jpg";
images[5] = "images/slide6.jpg";

// Change Image
function changeImg(){
	document.slide.src = images[i];

	// Check If Index Is Under Max
	if(i < images.length - 1){
	  // Add 1 to Index
	  i++; 
	} else { 
		// Reset Back To O
		i = 0;
	}

	// Run function every x seconds
	setTimeout("changeImg()", time);
}

// Run function when page loads
window.onload=changeImg;


