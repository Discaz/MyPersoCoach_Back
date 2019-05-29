const express = require ('express');


const router = express.Router();

router.get ('/', (req, res) =>{
    connection.query('SELECT * FROM  main_theme',(err, results) => {

        if (err) {
   
          // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
          res.status(500).send('Erreur lors de la récupération du main theùm');
        } else {
   
          // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
          res.json(results);
        }
      })
    });





    router.get ('/:id', (req, res) =>{
        connection.query('SELECT * FROM  main_theme',(err, results) => {
    
            if (err) {
       
              // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
              res.status(500).send('Erreur lors de la récupération du main theme');
            } else {
       
              // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
              res.json(results);
            }
          })
        });
    

        router.post ('/api/main_theme', (req, res) =>{
            const formData = req.body;
            connection.query('INSERT INTO main_theme ...SET ?', formData, (err, results) => {
        
                if (err) {
           
                  // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
                  res.status(500).send('Erreur lors de la récupération du main theme');
                } else {
           
                  // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
                  res.json(results);
                }
              })
            });
    
            
            app.put('/api/main_theme/:id', (req, res) => {

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



               app.delete('/api/main_theme/:id', (req, res) => {
                const idmaintheme = req.params.id;
                // TODO supprimer les données (étape 2)
                connection.query('DELETE FROM main_theme WHERE id = ?', [idmaintheme], err => {
                    // TODO envoyer une réponse au client (étape 3)
                    if (err) {
                        console.log(err);
                        res.status(500).send("Erreur lors de la suppression d'un id main_theme");
                      } else {
                        res.sendStatus(200);
                      }
                });;
              });
             




module.exports = router