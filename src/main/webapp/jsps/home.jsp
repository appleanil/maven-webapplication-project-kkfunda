<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Streaming Login</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial, Helvetica, sans-serif;
}

body{

background:url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=1920') no-repeat center center/cover;
height:100vh;
display:flex;
justify-content:center;
align-items:center;

}

body::before{
content:"";
position:absolute;
width:100%;
height:100%;
background:rgba(0,0,0,.7);
}

.container{

position:relative;
width:420px;
background:rgba(0,0,0,.75);
padding:50px;
border-radius:8px;
color:white;
z-index:1;

}

.logo{

color:#e50914;
font-size:42px;
font-weight:bold;
margin-bottom:30px;
text-align:center;

}

h2{

margin-bottom:25px;

}

.input-box{

margin-bottom:18px;

}

.input-box input{

width:100%;
padding:16px;
background:#333;
border:none;
border-radius:5px;
color:white;
font-size:16px;

}

.input-box input:focus{

outline:2px solid #e50914;

}

button{

width:100%;
padding:16px;
background:#e50914;
border:none;
border-radius:5px;
font-size:18px;
color:white;
cursor:pointer;
font-weight:bold;
transition:.3s;

}

button:hover{

background:#b00610;

}

.options{

display:flex;
justify-content:space-between;
margin-top:15px;
font-size:14px;
color:#ccc;

}

.options label{

display:flex;
align-items:center;
gap:5px;

}

.options a{

color:#ccc;
text-decoration:none;

}

.options a:hover{

text-decoration:underline;

}

.signup{

margin-top:40px;
color:#999;
font-size:16px;

}

.signup a{

color:white;
text-decoration:none;

}

.signup a:hover{

text-decoration:underline;

}

.info{

margin-top:20px;
font-size:13px;
color:#888;
line-height:22px;

}

</style>

</head>

<body>

<div class="container">

<div class="logo">NETFLIX</div>

<h2>Sign In</h2>

<form>

<div class="input-box">
<input type="email" placeholder="Email or mobile number" required>
</div>

<div class="input-box">
<input type="password" placeholder="Password" required>
</div>

<button type="submit">
Sign In
</button>

<div class="options">

<label>
<input type="checkbox">
Remember me
</label>

<a href="#">Need help?</a>

</div>

<div class="signup">

New to Netflix?
<a href="#">Sign up now.</a>

</div>

<div class="info">

This page is protected by Google reCAPTCHA to ensure you're not a bot.

</div>

</form>

</div>

</body>
</html>
