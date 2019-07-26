const express = require('express')
const router = express.Router();
const connection = require('../config')



router.get ('/', (req, res) =>{
    connection.query('SELECT date_echeance, text_resposne FROM action',(err, results) => {
        if (err) {
          
          res.status(500).send('Erreur lors de la récupération données');
        } 
        else {
          
          res.json(results);
        }
  
    })
  
  });



  module.exports = router