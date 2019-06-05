const express = require ('express');
const router = express.Router();
const connection = require('../config')

const bodyParser = require('body-parser');

router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true })
);


router.get ('/', (req, res) =>{
    connection.query('SELECT * FROM  problem_origin',(err, results) => {

        if (err) {
   
          
          res.status(500).send('Erreur lors de la récupération de problem_origin');
        } else {
   
          
          res.json(results);
        }
      })
    });


router.get ('/:id', (req, res) =>{
    connection.query('SELECT * FROM problem_origin',(err, results) => {
        
        if (err) {
    
          
          res.status(500).send('Erreur lors de la récupération de problem_origin');
        } else {
    
          
          res.json(results);
        }
      })
    });
    

router.post ('/', (req, res) =>{
const formData = req.body;
connection.query('INSERT INTO problem_origin SET ?', formData, (err, results) => {

    if (err) {

      
      res.status(500).send('Erreur lors de la récupération de problem_origin');
    } else {

      res.json(results);
    }
  })
});

            
router.put('/:id', (req, res) => {


const idproblem_origin = req.params.id;
const formData = req.body;


connection.query('UPDATE problem_origin SET ? WHERE id = ?', [formData, idproblem_origin], err => {

  if (err) {
  
    console.log(err);
    res.status(500).send("Erreur lors de la mise a jour de problem_origin");
  } else {

   
    res.sendStatus(200);
  }
});
});



router.delete('/:id', (req, res) => {
const idproblem_origin = req.params.id;

connection.query('DELETE FROM problem_origin WHERE id = ?', [idproblem_origin], err => {
    
    if (err) {
        console.log(err);
        res.status(500).send("Erreur lors de la suppression d'un id de problem_origin");
      } else {
        res.sendStatus(200);
      }
});;
});
             

module.exports = router