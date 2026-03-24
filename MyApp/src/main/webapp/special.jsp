<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Special Love Page</title>

<style>

html, body{
    margin:0;
    padding:0;
    height:100%;
    font-family: Arial, sans-serif;
    text-align:center;
    color:white;

    /* Heart background image */
    background-image:url('images/hearts-bg.png');
    background-size:cover;
    background-position:center;
    background-attachment:fixed;

    overflow-x:hidden;
}

/* Text container */
.container{
    width:70%;
    margin:auto;
    margin-top:40px;
    font-size:20px;
    line-height:1.7;
    text-shadow:2px 2px 6px rgba(0,0,0,0.6);
}

/* Highlight I love you */
.love{
    font-weight:bold;
    font-size:28px;
    color:yellow;
}

/* Image styling */
img{
    margin-top:30px;
    border-radius:15px;
    box-shadow:0 0 25px rgba(255,255,255,0.8);
    transition:transform 0.5s;
}

img:hover{
    transform:scale(1.1);
}

/* Floating heart styling */
.heart{
    position:absolute;
    width:20px;
    height:20px;
    background:red;
    transform:rotate(-45deg);
    animation:float 8s linear infinite;
}

.heart:before,
.heart:after{
    content:"";
    position:absolute;
    width:20px;
    height:20px;
    background:red;
    border-radius:50%;
}

.heart:before{
    top:-10px;
    left:0;
}

.heart:after{
    top:0;
    left:10px;
}

@keyframes float{
    0%{
        transform:translateY(100vh) rotate(-45deg);
        opacity:1;
    }
    100%{
        transform:translateY(-10vh) rotate(-45deg);
        opacity:0;
    }
}

</style>
</head>

<body>

<!-- Floating hearts -->
<div class="heart" style="left:10%; animation-delay:0s;"></div>
<div class="heart" style="left:20%; animation-delay:2s;"></div>
<div class="heart" style="left:30%; animation-delay:4s;"></div>
<div class="heart" style="left:40%; animation-delay:1s;"></div>
<div class="heart" style="left:50%; animation-delay:3s;"></div>
<div class="heart" style="left:60%; animation-delay:5s;"></div>
<div class="heart" style="left:70%; animation-delay:2s;"></div>
<div class="heart" style="left:80%; animation-delay:4s;"></div>
<div class="heart" style="left:90%; animation-delay:1s;"></div>

<div class="container">

<p>My dear Kannamma,</p>

<p>
You are truly special to me, in ways I could never fully express with words.
Ever since you came into my life, everything feels a little brighter, a little softer,
and a lot more meaningful. Your presence has a way of making even the simplest moments feel beautiful.
</p>

<p>
I don’t just like you—I deeply care about you, respect you, and cherish every little thing about you.
The way you smile, the way you talk, the way you understand me… all of it means more to me than you probably realize.
</p>

<p>
I want you to be a part of my life, not just for now, but always.
Through every phase, every dream, every challenge—I want you there beside me.
Because with you, life feels right. It feels complete.
</p>

<p>
And in my heart, there’s this quiet excitement for the future…
for all the moments we haven’t lived yet. I can’t wait for the day when we get to share those moments together,
when distance and waiting won’t matter anymore.
</p>

<p>
I want to see you every morning in my arms when we get up and still be very cute,
have our fights, dropping you in school, doing my work and missing you all day waiting for your call
so I can come and pick you.
</p>

<p>
Soon our kids will see why they love each other so much that even we get jealous of them.
I am forever thankful to God for giving me such an amazing woman in my life.
</p>

<p class="love">
I LOVE YOU SO MUCH MY DEAR KANNA ❤️
</p>

<p>
But first, I can't wait to have this moment with you.
</p>

<br>

<img src="images/image.jpeg" alt="My Image" width="300">

</div>

<!-- Flower Shower Animation -->
<script>

function createFlower(){

    const flower=document.createElement("div");
    flower.innerHTML="🌸";

    flower.style.position="fixed";
    flower.style.left=Math.random()*window.innerWidth+"px";
    flower.style.top="-20px";
    flower.style.fontSize="25px";

    document.body.appendChild(flower);

    let fall=setInterval(function(){

        let top=parseInt(flower.style.top);

        if(top>window.innerHeight){
            clearInterval(fall);
            flower.remove();
        }

        flower.style.top=top+5+"px";

    },50);
}

setInterval(createFlower,300);

</script>

</body>
</html>
