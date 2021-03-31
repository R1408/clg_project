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
img
{
border-radius : 50%;
}
h1{

color:green;
text-decoration : underline;
text-size:10px;
}

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
<div style = "width:33%;height:50px;float:right;background-color:lightgreen;"><a href = "JavaScript:Void(0);" class= "exer" style = "margin-top:20px;">Exercise</a></div>
<div style = "width:33%;height:50px;float:right;background-color:lightgreen;margin-right:6.5px;"><a href = "JavaScript:Void(0);" class= "yog" style = "">Yoga</a></div>
<div style = "width:33%;height:50px;background-color:lightgreen;margin-right:7px;"><a href = "JavaScript:Void(0);" class= "diet" style = "">Foods</a></div>
</div>
</div>



<div class = "dietdisplay" name="diet" style = "width:95%; display:none ">
<%@ include file = "Decre_Diet.jsp" %>
</div>

<!-- Exercise div -->

<div class = "Exercise" name="exer" style = "width:95%; display:none">
<%@ include file = "Decre_exer.jsp" %>
</div>


<div class = "yogdisplay" name = "yog" style = "width:95%;margin:15px 37px 15px 37px;background-color:#F2FFE4;">

<!-- block 1 -->
<div name = "block1" style="width:50%;float:right;">

<b><h1 style = "padding-top:20px;"> Prasarita Padottanasana:</h1>
</b>
<div style ="width:55%;">
<img src =resources/D_image/dc1.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>Traditionally,your hands should be touching the 
floor in front of you in this pose,but like
the extra shoulder stretch!</p>
<br/>
<p>Spread your feet 3-4 feet apart,and bend forward
at the HIPS,not the waist.</p>
<br/>
<p>if you're bending properly,you will actually feel
 a strong stretch in the hamstrings.</p>
<br/>
<p>Hold for 5-6 breaths.</p>
</div>

</div>

<!-- second block -->

<div name = "block2" style="width:50%;float:;">

<h1 style = "padding-top:20px;"> Anjaneyasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc2.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>This is one of the best poses for stretching the 
hips.Many people tend to have tight hips from
sitting in front of a computer all day.</p>
<br/>
<p>it will also help increase your flexibility
for the splits if that happens to be one of 
your goals.</p>
<br/>
<p>if you raise the arms up and tilt them
backward,you will bring this stretch into
the back as well as the hips.</p>
<br/>
<p>You can also bring the arms down to your
sides and behind you a bit to stretch the lower
back.</p>
</div>

</div>

<!-- Third block -->

<div name = "block3" style="width:50%;float:right;">

<h1 style = "padding-top:35px;"> Ardha Navasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc3.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>Put your ab muscles working hard as you try
to hold this pose.</p>
<br/>
<p>Put your palms down on the ground for balance, and 
raise the legs first.</p>
<br/>
<p>when you feel stable enough,raise the arms
so that they are parallel with the ground</p>
<br/>
<p>You should feel your abs burning if you're
doing it right.</p>
<br/>
<p>Hold for 30 seconds.</p>
</div>

</div>

<!-- forth block -->

<div name = "block4" style="width:50%;float:;">

<h1 style = "padding-top:35px;">Vasisthasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc4.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>it's no wonder that some form of the "plank"
made this list of yoga asanas for weight loss.</p>
<br/>
<p>Begin in regular plank position with your
palms face down on the yoga mat.</p>
<br/>
<p>Tilt your feet to the left so that the outer
right side of your right foot is touching the mat
and the left foot is on top of the right</p>
<br/>
<p>Shift your weight onto your right hand as you
remove your left hand from the ground.</p>
<br/>
<p>Slowly lift your left arm straight up ahead of 
you towards the ceiling.</p>
</div>

</div>

<!-- fifth block -->

<div name = "block5" style="width:50%;float:right;">

<h1 style = "padding-top:35px;">Vriksasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc5.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>Bring your left foot in to rest on the inside
of your left thigh.</p>
<br/>
<p>Keep your back straight.</p>
<br/>
<p>Your body may have a tendency to lean forward when
trying to balance but bring your shoulders back up.</p>
<br/>
<p>Keep your hands pressed together at your
heart to help with balance.</p>
<br/>
<p>Hold for 30 seconds.</p>
</div>

</div>

<!-- Six block -->

<div name = "block6" style="width:50%;float:;">

<h1 style = "padding-top:35px;">Parivrtta Anjaneyasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc6.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>if you need to,keep the right hand on the floor next
to the left foot for support while getting into this pose.
</p>
<br/>
<p>Try to keep your front knee bent at a 90-degree 
angle and your outstretched leg straight.</p>
<br/>
<p>Bring your right elbow to rest on your left
knee,and bring the hands together.</p>
<br/>
<p>Hold for 5-6 breaths or up to 30 seconds,and
repeat on the other side.</p>
</div>

</div>

<!-- seven block -->

<div name = "block7" style="width:50%;float:;margin-left:720px;">

<h1 style = "padding-top:35px;">Virabhadrasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc10.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>try to keep the front knee at as close
to a 90-degree angle as possible.</p>
<br/>
<p>The arms should be parallel to the floor.</p>
<br/>
<p>Try to hold it for 30 seconds.</p>
</div>

</div>

<!-- eight block -->
<div name = "block8" style="width:50%;float:;margin-top:-400px;">

<h1 style = "padding-top:35px;">Utkatasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc2.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>This is the yoga version of a squat hold and
also deserved a spot amongst the yoga asanas for
weight loss.</p>
<br/>
<p>Keep the feet together and the arms straight above
you as you lower into a squatting position.</p>
<br/>
<p>Try to tuck your hips in slightly,and
avoid arching the back too much.</p>
<br/>
<p>Hold for 30 seconds.</p>
</div>

</div>

<!-- Nine block -->

<div name = "block9" style="width:50%;float:right;">

<h1 style = "padding-top:35px;">Natarajasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc8.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>This is one of the more beginner yoga asanas 
for weight loss,but it works and feels great to
stretch in!</p>
<br/>
<p>From standing position,take hold of your left
ankle with your left hand.</p>
<br/>
<p>Shift your weight forward,and place your
right hand on your right knee for support.</p>
<br/>
<p>Hold for 30 seconds.</p>
</div>

</div>

<!-- Ten block -->

<div name = "block10" style="width:50%;float:;">

<h1 style = "padding-top:35px;">Bakasana:</h1>

<div style ="width:55%;">
<img src =resources/D_image/dc9.jpg style="height:200px;width:100%;">
</div>

<div style = "width:60%;">
<h2>About the pose</h2>
<br/>
<p>Begin in low squat with your hands on the mat
in front of you and your fingers spread wide.</p>
<br/>
<p>Your knees should be wider than your arms.</p>
<br/>
<p>Come up on your tiptoes,and place the knees
on the edges of your upper arms.</p>
<br/>
<p>Your knees shouldn't be directly on the upper
arms,but closer to the edges or outside of your
upper arms.</p>
<br/>
<p>Slowly shift your weight forward until your
toes are just barely touching the ground.</p>
</div>

</div>




</div>
</body>
<%@ include file = "Footer.jsp" %>


</html>