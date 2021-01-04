/* import packages
 */
const express=require("express");
const cors = require('cors');

/* import .env variables
 */
require("dotenv").config();
const { DB_PORT }=process.env
// PS: require("dotenv").config() to enable below destructuration

/* declare application*/
const app=express()

/* setup pre-middlewares 
 */

app.use(cors());
app.use(express.json());
// PS: express.json() is a method inbuilt in express to recognize the incoming Request Object as a JSON Object. 

app.use(express.urlencoded({extended:true}))
// PS: express.urlencoded() is a method inbuilt in express to recognize the incoming Request Object as strings or arrays

/* require routes
 */
require('./routes')(app);

/* handle errors
 */
app.use((err, req, res, next)=>{
  
})

/* listen application 
 */
app.listen(DB_PORT, () => {
  console.log(`🛸 Server is runing on http://localhost:${DB_PORT}`);
});