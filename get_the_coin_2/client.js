// ---------------------------------------SOCKET---------------------------------------
let socket = new WebSocket('ws://localhost:8080/')

let count = 0
socket.onopen = (e)=>{
    count = count + 1
    alert('server ready to get data')
}

socket.onmessage = (event)=>{
    console.log(`server: hi! ${event.data}`)
    if(JSON.parse(event.data).event == 1){
        var player = JSON.parse(event.data);
        const prince = player.id
        console.log(prince) //console.log()
        genPrince(prince)
        socket.send("done")

    }
    if(JSON.parse(event.data).event == 2){
        let new_position = JSON.parse(event.data)
        switch (new_position.command) {
            case "up":
                jump(new_position.player,new_position.y_co)
            case "right":
                forwords(new_position.player,new_position.x_co)
            case "left":
                backwords(new_position.player,new_position.x_co)
            default:
                break;
        }
        
    }
    
}

socket.onclose = (event)=>{
    if (event.wasClean) {
        alert(`[closed] Connection closed cleanly, code=${event.code} reason=${event.reason}`)
    } else {
        alert('[close] Connection died');
    }
}

socket.onerror = (error) => {
    alert(`[error] ${error.message}`);
};

// ---------------------------------------functions to make thing move---------------------------------------
let position = { 
    command:"0",
    x_co:0,
    y_co:70
}

function jump(princeClass,Y){
    obj = document.querySelector(`.${princeClass}`)
    obj.style.bottom = `${Y}px`
    setTimeout(() => {
        position.y_co = Y - 50
        obj.style.bottom = `${Y-50}px`
    }, 170);
}

function forwords(princeClass,X) {
    obj = document.querySelector(`.${princeClass}`)
    position.x_co = X
    obj.style.left = `${X}px`
}

function backwords(princeClass,X) {
    obj = document.querySelector(`.${princeClass}`)
    position.x_co = X
    obj.style.left = `${X}px`
}

// ---------------------------------------Keyboard events---------------------------------------
const control = (event)=>{
    if (event.keyCode == 38) {
        position.command = "up"
        socket.send(JSON.stringify(position))
    }
    if (event.keyCode == 39) {
        position.command = "right"
        socket.send(JSON.stringify(position))
    }
    if (event.keyCode == 37) {
        position.command = "left"
        socket.send(JSON.stringify(position))
    }
}
document.addEventListener("keydown",control)

// ---------------------------------------functions for html rendering (abhi ke liye inka kaam hogaya hain)---------------------------------------
function genPrince(obj){
    const div = document.createElement('div')
    div.classList.add(obj)
    document.getElementsByTagName('body')
    document.getElementById("body").appendChild(div)
    const princeClass = document.querySelector(`.${obj}`)
    setCSS(princeClass);
}

function setCSS(obj) {
    obj.style.backgroundColor = "blueviolet"
    obj.style.width = "30px";
    obj.style.height = "30px";
    obj.style.position = "absolute";
    obj.style.bottom = "70px";
    obj.style.left = "0px";
}
