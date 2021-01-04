/* import express
 */
const express =require('express');
const router = express.Router();
// PS: we create an variable which use Router express method

router.get('/', 
  (req, res)=>{
    res.send('List of WANTED 👽 !');
  }
)

/* export router
 */
module.exports=router;    