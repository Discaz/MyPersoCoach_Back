const express = require ('express');
const router = express.Router();
const connection = require('../config')






  
router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM entreprise',(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données de la table entreprise')
     }
     else{
       res.json(results)
     }

  })

});

router.get ('/:id', (req, res) =>{
  const id = req.params.id;
  connection.query('SELECT * FROM  entreprise',id,(err, results) => {
      if (err) {
        
        res.status(500).send('Erreur lors de la récupération des données de la table entreprise');
      } 
      else {
        
        res.json(results);
      }

  })

});

router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO entreprise SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde des données de la table entreprise")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})






router.put('/:id', (req, res) => {

const identreprise = req.params.id;
const formData = req.body;


connection.query('UPDATE entreprise SET ? WHERE id = ?', [formData, identreprise], err => {
    if (err) {
    
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour des données de la table entreprise");
    } else {
      
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const identreprise = req.params.id;

connection.query('DELETE FROM entreprise WHERE id = ?', [identreprise], err => {
  
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id de la table entreprise");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router