const express = require ('express');
const router = express.Router();
const connection = require('../config')

const bodyParser = require('body-parser');

router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true })
);

router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true 
  }));

  
router.get ('/', (req, res) =>{
    connection.query('SELECT * FROM question',(err, results) => {

        if (err) {
   
          
          res.status(500).send('Erreur lors de la récupération de question');
        } else {
   
          
          res.json(results);
        }
      })
    });

router.get ('/:id', (req, res) =>{
    connection.query('SELECT * FROM question',(err, results) => {
        
        if (err) {
    
          
          res.status(500).send('Erreur lors de la récupération de la question');
        } else {
    
          
          res.json(results);
        }
      })
    });
    

router.post ('/', (req, res) =>{
    const formData = req.body;
    connection.query('INSERT INTO question ...SET ?', formData, (err, results) => {

        if (err) {
    
          
          res.status(500).send('Erreur lors de la récupération de la question');
        } else {
    
          
          res.json(results);
        }
      })
    });
    
    
router.put('/:id', (req, res) => {

    
    const idquestion = req.params.id;
    const formData = req.body;
    
    
    connection.query('UPDATE question SET ? WHERE id = ?', [formData, idquestion], err => {
    
      if (err) {
        
        console.log(err);
        res.status(500).send("Erreur lors de la mise a jour de question");
      } else {
    
        
        res.sendStatus(200);
      }
    });
    });



router.delete('/:id', (req, res) => {
const idquestion = req.params.id;

connection.query('DELETE FROM question WHERE id = ?', [idquestion], err => {
    
    if (err) {
        console.log(err);
        res.status(500).send("Erreur lors de la suppression d'un id de question");
      } else {
        res.sendStatus(200);
      }
});;
});
             

module.exports = router