  
const path=require('path')
const express= require('express')
const bodyParser= require('body-parser');
const app = express()
app.set('title','Smart contract')
app.use(bodyParser.urlencoded({extended: false}))

app.listen(8080,()=>{
    console.log("Server is running on port: 8080")
})
app.get('',(req,res)=>{
    res.sendFile("index.html",{root: __dirname})   
})