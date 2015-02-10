window.onload = init;
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
