const express = require('express');
const redis = require('async-redis')
const {v4 : uuidv4} = require('uuid')
const bodyParser = require('body-parser')
const app = express();

app.use(express.static('public')); //loads the static files in server
app.use(bodyParser.urlencoded({extended: true}));

// redis class
class Database{
    // this is always called 
    constructor(){
        this.client = redis.createClient(6379);
    }

    // these are methods
    async add_pass(id,tryPass){ // add the tried password to redis
        try {
            const pass =  await this.client.get(`${id}`)
            if (pass != null) {
                return "password for this id already exsist"
            } else {
                await this.client.set(`${id}`,`${tryPass}`)
                return 1
            }
        } catch (error) {
            console.log(`ERROR: ${error}`)
            return 0
        }
     
    }
    async get_pass(id){ // fetch the password of the user from redis
        try {
            const value = await this.client.get(`${id}`)
            if (value == null) {
                return "no password for this id"
            } else {
                return value
            }
        } catch (error) {
            console.log(`ERROR: ${error}`)
            return 0
        }
        
    }
}

let db = new Database // db object created

app.get('/',(req,res)=>{
    res.sendFile(__dirname+'/public/login.html')
})

app.post('/', async (req, res) => {
    res.sendFile(__dirname+'/public/login.html')
    const userPassword = req.body.password;
    if (!userPassword) {
      return res.send("Enter the password :|");
    }
    if (userPassword.length > 2000) {
      return res.send("You have to enter password not a research paper");
    }
    const id = uuidv4();
    try {
      const result = db.add_pass(id, userPassword); //db constructor i have to make
      if (result !=  1){
        console.error(result);
        return res.send("Something went wrong...");
      }
    } catch (err) {
      res.status(500);
      console.error(err);
      return res.send("Something went wrong...");
    }
    return res.redirect(`ask-admin/${id}`);
  });
  
app.get('ask-admin/:id([a-f0-9\-]{36}',(req,res)=>{
    res.sendFile(__dirname+'/public/ask-admin.html')
    const id = req.params.id;
    const userPassword = db.get_pass(id); //db constructor i have to make

  if (userPassword == null) {
    return res.status(404).send("Paste not found or access has been denied.");
  }

  const unsafe_content = userPassword.password; //yeh bhi banana
  const safe_content = escape_string(unsafe_content);

  res.render('note_public', {   // iska login nahin pata abhi
    content: safe_content,
    id: note_id,
    captcha: res.recaptcha
  });
})

app.post('/goPupeteer/:id([a-f0-9\-]{36})', recaptcha.middleware.verify, (req, res) => {
    const id = req.params.id;

    /* Make pupeteer visit the paste */
    utils.visit(id, req);
  
    res.redirect(`ask-admin/${id}?msg=requesting`);
  });
  

// app.get('/ask-admin',(req,res)=>{
//     res.sendFile(__dirname+'/public/ask-admin.html')
// })

// app.post('/ask-admin',(req,res)=>{
//     res.sendFile(__dirname+'/public/ask-admin.html')
//     console.log(req.body)
//     // if (req.body.username == "admin" && req.body.password == "tatty") {
//     //     res.send('you in')
//     // } else {
//     //     res.send('no')
//     // }
// })

// app.post('/asking',(eq,res)=>{
//     console.log('kuch toh hua hain')
//     res.redirect('/ask-admin')
// })

app.listen(3000,()=>{
    console.log(`server listening on 3000`)
})
