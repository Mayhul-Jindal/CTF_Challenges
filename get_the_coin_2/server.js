const http = require("http")
const ws = require("websocket").server
const {v4 : uuidv4} = require('uuid')

let connection = null

const httpServer = http.createServer((req,res)=>{
    console.log("hmm")
})

const websocket = new ws({
    "httpServer":httpServer
})


websocket.on("request",(request)=>{
    const userId = uuidv4()
    const prince = `prince${userId}`

    connection = request.accept(null,request.origin)
    console.log(`connection accepted from ${userId}`)
    const player = {event: 1,id: prince}
    connection.send(JSON.stringify(player))

    connection.on("message",(message)=>{
        if(message.utf8Data == "done"){console.log(`client: done rendering the page`)}
        else{
            new_position = JSON.parse(message.utf8Data)
            new_position.event = 2
            new_position.player = prince
            switch (new_position.command) {
                case "up":
                    new_position.y_co = new_position.y_co + 50
                    connection.send(JSON.stringify(new_position))
                    break
                case "right":
                    new_position.x_co = new_position.x_co + 10
                    connection.send(JSON.stringify(new_position))
                    break
                case "left":
                    new_position.x_co = new_position.x_co - 10
                    connection.send(JSON.stringify(new_position))
                    break
                default:
                    break;
            }
        }
        

        // if(message.utf8Data == "up"){jump(prince)}
        // if(message.utf8Data == "right"){forwords(prince)}
        // if(message.utf8Data == "left"){backwords(prince)}
    })

    connection.on("closed",()=>{console.log("connection closed")})

})

httpServer.listen('8080',()=>{console.log('listening at port 8080')})

