const express = require('express');
const bodyParser = require('body-parser')
const app = express();
app.use(express.static('public')); //loads the static files in server
app.use(bodyParser.urlencoded({extended: true}));

app.get('/',(req,res)=>{
    res.sendFile(__dirname+'/public/login.html')
})

app.get('/ask-admin',(req,res)=>{
    res.sendFile(__dirname+'/public/ask-admin.html')
})
app.post('/ask-admin',(req,res)=>{
    res.sendFile(__dirname+'/public/ask-admin.html')
    console.log(req.body)
    // if (req.body.username == "admin" && req.body.password == "tatty") {
    //     res.send('you in')
    // } else {
    //     res.send('no')
    // }
})

app.post('/asking',(eq,res)=>{
    console.log('kuch toh hua hain')
    res.redirect('/ask-admin')
})

app.listen(3000,()=>{
    console.log(`server listening on 3000`)
})