const express = require ('express');
const router = express.Router();
const connection = require('../config')



  
router.get ('/', (req, res) =>{
    connection.query('SELECT * FROM response',(err, results) => {

        if (err) {
   
          
          res.status(500).send('Erreur lors de la récupération de response');
        } else {
   
          
          res.json(results);
        }
      })
    });

router.get ('/:id', (req, res) =>{
  const id = req.params.id
  connection.query('SELECT * FROM response',id,(err, results) => {
        
        if (err) {
    
          
          res.status(500).send('Erreur lors de la récupération de la response');
        } else {
    
          
          res.json(results);
        }
      })
    });
    

router.post ('/', (req, res) =>{
    const formData = req.body;
    connection.query('INSERT INTO response SET ?', formData, (err, results) => {

        if (err) {
    
          
          res.status(500).send('Erreur lors de la récupération de la response');
        } else {
    
          
          res.json(results);
        }
      })
    });
    
    
    
router.put('/:id', (req, res) => {

    
    const idresponse = req.params.id;
    const formData = req.body;
    
    
    connection.query('UPDATE question SET ? WHERE id = ?', [formData, idresponse], err => {
    
      if (err) {
        
        console.log(err);
        res.status(500).send("Erreur lors de la mise a jour de response");
      } else {
    
        
        res.sendStatus(200);
      }
    });
    });



router.delete('/:id', (req, res) => {
const idresponse = req.params.id;

connection.query('DELETE FROM response WHERE id = ?', [idresponse], err => {
    
    if (err) {
        console.log(err);
        res.status(500).send("Erreur lors de la suppression d'un id de response");
      } else {
        res.sendStatus(200);
      }
});;
});
             

module.exports = router