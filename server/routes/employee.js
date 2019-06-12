const express = require ('express');
const router = express.Router();
const connection = require('../config')






  
router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM employe',(err, results)=> {
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
    connection.query('SELECT * FROM  employe',id,(err, results) => {
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
  connection.query('INSERT INTO employe SET ? ', formData, (err, results)=> {
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

const idemploye = req.params.id;
const formData = req.body;


connection.query('UPDATE employe SET ? WHERE id = ?', [formData, idemploye], err => {
    if (err) {
    
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour des données de la table employé");
    } else {
      
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const idemploye = req.params.id;

connection.query('DELETE FROM employe WHERE id = ?', [identreprise], err => {
  
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id de la table employé");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router