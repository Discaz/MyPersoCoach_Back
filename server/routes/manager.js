const express = require ('express');
const router = express.Router();
const connection = require('../config')

const bodyParser = require('body-parser');


router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true 
  }));

  
router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM manager',(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données de la table manager')
     }
     else{
       res.json(results)
     }

  })

});

router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO manager SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde des données de la table manager")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})



router.get ('/:id', (req, res) =>{
  connection.query('SELECT * FROM manager',(err, results) => {
      if (err) {
        
        res.status(500).send('Erreur lors de la récupération données de la table manager');
      } 
      else {
        
        res.json(results);
      }

  })

});


router.put('/:id', (req, res) => {

const idmanager = req.params.id;
const formData = req.body;


connection.query('UPDATE manager SET ? WHERE id = ?', [formData, idmanager], err => {
    if (err) {
    
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour des données de la table manager");
    } else {
      
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const idmanager = req.params.id;

connection.query('DELETE FROM manager WHERE id = ?', [idmanager], err => {
    
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id de la table manager");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router