const express = require ('express');
const router = express.Router();
const connection = require('../config')

const bodyParser = require('body-parser');


router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true 
  }));

  
router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM action',(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données de la table action')
     }
     else{
       res.json(results)
     }

  })

});

router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO action SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde des données de la table action")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})



router.get ('/:id', (req, res) =>{
  connection.query('SELECT * FROM  action',(err, results) => {
      if (err) {
        //Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
        res.status(500).send('Erreur lors de la récupération données de la table action');
      } 
      else {
        // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
        res.json(results);
      }

  })

});


router.put('/:id', (req, res) => {
// récupération des données envoyées
const idaction = req.params.id;
const formData = req.body;

// connection à la base de données, et insertion du film
connection.query('UPDATE action SET ? WHERE id = ?', [formData, idaction], err => {
    if (err) {
      // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour des données de la table action");
    } else {
      // Si tout s'est bien passé, on envoie un statut "ok".
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const idaction = req.params.id;
// TODO supprimer les données (étape 2)
connection.query('DELETE FROM action WHERE id = ?', [idaction], err => {
    // TODO envoyer une réponse au client (étape 3)
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id de la table action");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router