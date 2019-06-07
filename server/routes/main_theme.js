const express = require ('express');
const router = express.Router();
const connection = require('../config')

const bodyParser = require('body-parser');


router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true 
  }));

  
router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM main_theme;',(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récuparation des données')
     }
     else{
       res.json(results)
     }

  })

});

router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO main_theme SET ?', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde de d'un employee")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})



router.get ('/:id', (req, res) =>{
  connection.query('SELECT * FROM  main_theme',(err, results) => {
      if (err) {
        //Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
        res.status(500).send('Erreur lors de la récupération du main theme');
      } 
      else {
        // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
        res.json(results);
      }

  })

});


router.put('/:id', (req, res) => {
// récupération des données envoyées
const idmaintheme = req.params.id;
const formData = req.body;

// connection à la base de données, et insertion du film
connection.query('UPDATE main_theme SET ? WHERE id = ?', [formData, idmaintheme], err => {
    if (err) {
      // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour de main_theme");
    } else {
      // Si tout s'est bien passé, on envoie un statut "ok".
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const idmaintheme = req.params.id;
// TODO supprimer les données (étape 2)
connection.query('DELETE FROM main_theme WHERE id = ?', [idmaintheme], err => {
    // TODO envoyer une réponse au client (étape 3)
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id main_theme");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router