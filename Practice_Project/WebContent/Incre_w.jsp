<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
a:visited
{
color:green;
}
a:hover
{
color:white;
}
a:active
{
color:red;
}
h2{
text-decoration : underline;
color:green;
}

h1,h4
{
text-size:10px;
color:green;
text-decoration:underline;
}

h3
{
color:green;
}
h4
{
color:light-green;
}
img
{
border-radius:50%;

}


/*
css for green surounding
-webkit-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
}
*/

</style>


<script>

 $(document).ready(function(){
	$(".exer").click(function(){
		$(".Exercise").css("display","block");
		$(".Yogdisplay").css("display","none");
		$(".dietdisplay").css("display","none");
			}); 
	$(".yog").click(function(){
		$(".Exercise").css("display","none");
		$(".yogdisplay").css("display","block");
		$(".dietdisplay").css("display","none");
	});
	
	$(".diet").click(function(){
		$(".Exercise").css("display","none");
		$(".yogdisplay").css("display","none");
		$(".dietdisplay").css("display","block");
		
	})
	
 });
 
 
</script>

</head>

<body>
<%@ include file = "Header.jsp" %>


<div class = "wra" style=" margin :10px 37px 5px 37px; background-color:green">
	<div style="text-align:center;padding-top:5px auto;">
		<div style = "width:33%;height:50px;float:right;background-color:lightgreen;"><a href = "#" class= "exer" style = "margin-top:20px;">Exercise</a></div>
		<div style = "width:33%;height:50px;float:right;background-color:lightgreen;margin-right:6.5px;"><a href = "#" class= "yog" style = "">Yoga</a></div>
		<div style = "width:33%;height:50px;background-color:lightgreen;margin-right:7px;"><a href = "#" class= "diet" style = "">Foods</a></div>
	</div>
</div>
<!-- Informations --> 
<!-- diet div -->

<div class = "dietdisplay" name="diet" style = "width:95%; display:none ">
<%@ include file = "Incre_Diet.jsp" %>
</div>

<!-- Exercise div -->

<div class = "Exercise" name="exer" style = "width:95%; display:none">
<%@ include file = "Incre_exer.jsp" %>
</div>

 
<!-- yog Div -->  

<div class = "yogdisplay" name="yog" style="width:95%;margin:15px 37px 15px 37px;background-color:#F2FFE4;">
<div name="About" style="float:right;padding-right:70px; width:30%;">
<h1 style="color:green;"><b>About the Pose:</b></h1>
<br/>
<p>'Bhujanga' means snake in Sanskrit, and Bhujangasana looks like the raised hood of a cobra when assumed. Hence, it is called the Cobra Pose.</p>
<br/>
<p>It is a rejuvenating backbend and a beginner level Ashtanga yoga asana. </p>
<br/>
<p>Hold it for 15 to 30 seconds.</p>
</div>

<div name="Work" style="float:right;width:30%;padding-right:65px;">
<h1 style="color:green;margin-right:20px;"><b>How it Helps:</b></h1>
<br/>
<p>Bhujangasana stretches the muscles in your shoulders, chest, and abdominals.</p>
<br/>
<p>The pose increases blood circulation in the body and improves digestion. </p>
<br/>
<p>It also helps maintain the health of the thyroid gland.</p>
</div>

<div style = "width:23%;">
<img src = "resources/images/im17.jpg" style="height:200px;">
</div>

<!-- SECOND EXCERCISE -->

<br/><br/><br/>
<div name="About" style=width:30%;float:right;padding-right:70px;">
<h1 style="color:green;"><b>About The Pose :</b></h1>
<br/>
<p>Salamba Sarvangasana or the Shoulder Stand is powerful and considered the queen among all the yoga asanas.</p>
<p>The pose is an advanced level yoga asana.</p>
<br/>
<p>Practice it in the morning on an empty stomach and clean bowels. Hold it for 30 to 60 seconds.</p>
</div>

<div name="Helps" style="width:30%;float:right;padding-right:65px;">
<h1 style="color:green;"><b>How It Helps:</b></h1>
<br/>
<p>Salamba Sarvangasana helps reduce anxiety and stress. </p>
<br/>
<p>The pose enables a new flow of blood to the abdominal region, improving its function and thereby bettering the digestion process.</p>
</div>

<div style="width:21%;">
<img src = "resources/images/im16.jpg" style="width:100%;">
</div>

<!--   THIRD EXERCISE -->
<br/><br/><br/>

<div name="About" style=width:30%;float:right;padding-right:70px;">
<h1 style="color:green;"><b>About The Pose :</b></h1>
<br/>
<p>Vajrasana or the Diamond Pose is a very common yoga asana that is often used to sit in for meditation. </p>
<br/>
<p>The pose is a beginner level Vinyasa yoga asana.</p>
<br/>
<p>Unlike other yoga asanas, Vajrasana works best when practiced after a meal. Hold the pose for 5 to 10 minutes.</p>
</div>

<div name="Helps" style="width:30%;float:right;padding-right:65px;">
<h1 style="color:green;"><b>How It Helps:</b></h1>
<br/>
<p>Vajrasana helps combat stomach disorders and increases blood circulation in the body.</p>
<br/>
<p>The pose relieves constipation and improves digestion. </p>
<br/>
<p>It stretches the muscles of the thighs, hips, and calves.</p>
</div>

<div style="width:21%;">
<img src = "resources/images/im18.jpg">
</div>

<!-- FORTH EXERCISE -->
<br/><br/><br/>

<div name="About" style=width:30%;float:right;padding-right:70px;">
<h1 style="color:green;"><b>About The Pose :</b></h1>
<br/>
<p>Pawanmuktasana is also called the Wind Relieving Pose as it releases all the trapped gases in your body.</p>
<br/>
<p> The pose is a beginner level Vinyasa yoga asana.</p>
<br/>
<p>Practice it first thing in the morning on an empty stomach to relieve it of pressure. Hold it for 10 to 60 seconds.</p>
</div>

<div name="Helps" style="width:30%;float:right;padding-right:65px;">
<h1 style="color:green;"><b>How It Helps:</b></h1>
<br/>
<p>Pawanamuktasana stretches the abdominal muscles and improves your body's metabolic process.</p>
<br/>
<p>The pose relieves indigestion, flatulence, acidity, and constipation. It also eases tension in the lower back.</p>
</div>

<div style="width:21%;">
<img src = "resources/images/im19.jpg">
</div>
<!-- FIFTH EXCERSICE -->

<br/><br/><br/>
<div name="About" style=width:30%;float:right;padding-right:70px;">
<h1 style="color:green;"><b>About The Pose :</b></h1>
<br/>
<p>The word 'Matsya' means fish. </p>
<br/>
<p>Similar to how Lord Vishnu, in his Matsyavatar, saves the sages from the great flood, this asana does the same for your body. </p>
<br/>
<p>The pose is a beginner level Hatha yoga asana.Hold it for 30 to 60 seconds.

 </p>
</div>

<div name="Helps" style="width:30%;float:right;padding-right:65px;">
<h1 style="color:green;"><b>How It Helps:</b></h1>
<br/>
<p> Matsyasana stretches the muscles of the stomach and upper back.</p>
<br/>
<p>The pose relieves tension in your neck and shoulders and stimulates the organs of your belly.</p>
<br/>
<p> It also improves your body posture and eliminates irritability.</p>
</div>

<div style="width:21%;">
<img src = "resources/images/im20.jpg">
</div>


<!-- SIX EXCERSICE -->

<br/><br/><br/>
<div name="About" style=width:30%;float:right;padding-right:70px;">
<h1 style="color:green;"><b>About The Pose :</b></h1>
<br/>
<p>Dhanurasana is also called the Bow Pose because it resembles a wired bow when assumed.</p>
<br/>
<p>The pose is a beginner level Vinyasa yoga asana. </p>
<br/>
<p>Practice it in the morning on an empty stomach or evening after a gap of 4 to 6 hours from your last meal. Hold it for 15 to 30 seconds.</p>
</div>


<div name="Helps" style="width:30%;float:right;padding-right:65px;">
<h1 style="color:green;"><b>How It Helps:</b></h1>
<br/>
<p>Dhanurasana massages your thyroid glands, improves digestion, and increases your appetite.</p>
<br/>
<p>The pose improves blood circulation and cures gastrointestinal problems.</p>
<br/>
<p>It also relieves stress and stretches the back muscles.</p>
</div>

<div style="width:21%;">
<img src = "resources/images/im21.jpg">
</div>

<!-- SEVEN EXCERSICE -->

<br/><br/><br/>
<div name="About" style=width:30%;float:right;padding-right:70px;">
<h1 style="color:green;"><b>About The Pose :</b></h1>
<br/>
<p> 'Chakra' means wheel in Sanskrit.The pose is called Chakrasana as your body bends backward and looks like a wheel when you are in the pose. </p>
<br/>
<p>it is a beginner level Ashtanga yoga asana. </p>
<br/>
<p>Practice Chakrasana in the morning or evening on an empty stomach. Hold the pose for 1 to 5 minutes.</p>
</div>

<div name="Helps" style="width:30%;float:right;padding-right:65px;">
<h1 style="color:green;"><b>How It Helps:</b></h1>
<br/>
<p>Chakrasana balances your hormones and increases your hip flexibility. </p>
<br/>
<p>The pose energizes your body and keeps all the body processes in harmony. </p>
<br/>
<p>It purifies the blood in your system and maintains normal metabolism rate.</p>
</div>


<div style="width:21%;">
<img src = "resources/images/im22.jpg">
</div>

</div>
<!--  
<div style="float:right;">
steps:
<p>Lie down on your stomach and feel relax.</p>
</div>
-->
</body>

</html>
<%@ include file = "Footer.jsp" %>
