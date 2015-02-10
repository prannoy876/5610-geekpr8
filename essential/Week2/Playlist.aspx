<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Playlist.aspx.cs" Inherits="Week2_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="playlist.js"></script>
<script src="playlist-store.js"></script>

<style>
   
   body
   {
       padding:10px;
   }
   
   .main-content
   {
       padding:10px;
   }
   
   .btn-group
   {
       padding:23px;
   }
  
  
</style>

</head>
<body>

 <nav class="navbar  navbar-fixed-top navbar-inverse" id="my-navbar">
       <div class="container">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">

               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
             </button>
              <a href="" class="navbar-brand">cs5610</a>
          </div>

          
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <a href="../Experiments.aspx" class="btn btn-info navbar-btn navbar-right">Experiments</a>
                <ul class=" nav navbar-nav">

                <li class="active"><a href="../Default.aspx">Home</a></li>

                
              
                </ul>
            </div>
       </div>
  </nav>

   <div class="jumbotron">
      <div class="container text-center center-block">
        <h2>Music Playlist using HTML5 Web Storage API</h2>
      </div>
   </div>
 
 <div class="container">
   <div class="main-content">
          <form>
              <input type="text" id="songTextInput" size="60" placeholder="Song name">
              <input type="button" id="addButton" class="btn btn-success" value="Add Song">
          </form>
          <ul id="playlist" class="list-group">
          
          </ul>
   </div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5 Storage API</h3>
  </div>
  <div class="panel-body">
  <pre>
      So in this experiment,we make use of HTML5'S Web Storage API to load our playlists.Take a look at the
      javascript code below especially the loadPlayist() and save() methods which adds songs to the array which is
      stored temporarily inside the browser. 
  </pre>


  <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Instructions</h3>
  </div>
  <div class="panel-body">
  <pre>
      1. Add some songs into the Playlist by clicking the "Add Song" button.

      2.Close the browser.

      3.Open the browser and go to the same page.

      You will see the your Playlist is saved as it was.
      
  </pre>
   
  </div>
</div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">HTML5</h3>
  </div>
  <div class="panel-body">
      &lt;div class=&quot;container&quot;&gt;<br />
   &lt;div class=&quot;main-content&quot;&gt;<br />
          &lt;form&gt;<br />
              &lt;input type=&quot;text&quot; id=&quot;songTextInput&quot; size=&quot;60&quot; placeholder=&quot;Song name&quot;&gt;<br />
              &lt;input type=&quot;button&quot; id=&quot;addButton&quot; class=&quot;btn btn-success&quot; value=&quot;Add Song&quot;&gt;<br />
          &lt;/form&gt;<br />
          &lt;ul id=&quot;playlist&quot; class=&quot;list-group&quot;&gt;<br />
            &lt;li class=&quot;list-group-item&quot;&gt;Hi&lt;/li&gt;<br />
          &lt;/ul&gt;<br />
   &lt;/div&gt;<br />
 &lt;/div&gt;
  </div>
</div>
 </div>

 <div class="summary">
    <div class="panel panel-default">
       <div class="panel-heading">
          <h3 class="panel-title">Javascript</h3>
       </div>
     <div class="panel-body">
        <pre> window.onload = init;
function init() {
var button = document.getElementById("addButton");
button.onclick = handleButtonClick
loadPlaylist();
}

function handleButtonClick() {
    var song = document.getElementById("songTextInput");
    var name = song.value;
    var myClass=" list-group-item";
    var li = document.createElement("li");
    li.innerHTML = name;
    li.className = "list-group-item";
    var playlist = document.getElementById("playlist");
    playlist.appendChild(li);
    save(name);
    
}


function save(item)
 {
    var playlistArray = getStoreArray("playlist");
    playlistArray.push(item);
    localStorage.setItem("playlist", JSON.stringify(playlistArray));
}
function loadPlaylist() 
{
var playlistArray = getSavedSongs();
var ul = document.getElementById("playlist");
    if (playlistArray != null) 
    {
      for (var i = 0; i < playlistArray.length; i++)
       {
        var li = document.createElement("li");
        li.innerHTML = playlistArray[i];
        li.className = "list-group-item";
        ul.appendChild(li);
       }
    }
}

function getSavedSongs()
{
   return getStoreArray("playlist");
}
        </pre>
    
      </div>
   </div>
 </div>

 <div class="container">
        <div class="btn-group">
              <a href="../fileview/Default.aspx?~/Week2/playlist.aspx" class="btn btn-primary">View Source</a>     
        <div>
  </div>


  <footer>
     <div class="navbar  navbar-fixed-bottom navbar-inverse" role="navigation">
        <div class="container">
          <div class="navbar-text pull-left">
            <p>Copyright &copy 2015 Prannoy Roche</p>
          </div>

   

          <div class="navbar-text pull-right">
             <a href="http://www.facebook.com/prannoy.roche" <i class="fa fa-facebook-square fa-2x"></i></a>
             <a href="http://www.linkedin.com/in/prannoyroche/" <i class="fa fa-linkedin-square fa-2x"></i></a>
          </div>
        </div>
     </div>
   </footer>
 

</body>
</html>
