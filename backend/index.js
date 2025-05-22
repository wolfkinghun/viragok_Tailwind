import express, { request, response } from "express";
import mysql from "mysql2/promise";
import { configDB } from "./configDB.js";
import cors from "cors";

let connection 

try {
    connection = await mysql.createConnection(configDB);
} catch (error) {
    console.log(error);
}
const app = express();
app.use(express.json());
app.use(cors());

//http://10.201.6.15:8000/api/categories :a kategóriák listázása

app.get('/api/categories',async (request,response)=>{
    try {
        const sql = 'SELECT * from categories'
        const [rows, fields] = await connection.execute(sql);
        response.status(200).send(rows)
      } catch (err) {
            console.log(err);
      }
})

//http://10.201.6.15:8000/api/plants/:categId :egy bizonyos kategóriába tartozó növények listázása

app.get('/api/plants/:categId',async(request,response)=>{
    const {categId} = request.params
    
    try {
        const sql = "SELECT categories.id, categories.name AS categ, plants.photo, plants.descr, plants.name FROM plants INNER JOIN categories ON categories.id = plants.categId WHERE categories.id = ?"
        const values = [categId];
        const [rows, fields] = await connection.execute(sql,values);
        if(rows.length > 0){
             response.status(200).send(rows)
        }
           else{
            response.status(400).json({"message":"Nincs ilyen id!"})
        }
    } catch (err) {
        console.log(err);
        response.status(500).json("Server hiba.")
    }
})

//http://10.201.6.15:8000/api/search/:name : keresés növény név alapján

app.get('/api/search/:name',async (request,response)=>{
    const {name} = request.params;
    try {
        const sql = 'SELECT * from plants where name=?';
        const values = [name];
        const [rows,fields] = await connection.query(sql,values);
        if(rows.length>0)    response.status(200).send(rows)
        else resp.status(404).json({msg:`Nincs találat a/az <${name}> -ra!`})
    } catch (error) {
        console.log(error);
        response.status(500).json("Server hiba.")
    }
})



const port = 8000
app.listen(port,()=>console.log(`Server is running on localhost: ${port}`));
