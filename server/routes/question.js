const express = require ('express');
const router = express.Router();

router.get ('/', (req, res) =>{
    connection.query('SELECT * FROM  question',(err, results) => {

        if (err) {
   
          // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
          res.status(500).send('Erreur lors de la récupération de question');
        } else {
   
          // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
          res.json(results);
        }
      })
    });





    router.get ('/:id', (req, res) =>{
        connection.query('SELECT * FROM question',(err, results) => {
            
            if (err) {
       
              // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
              res.status(500).send('Erreur lors de la récupération du question');
            } else {
       
              // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
              res.json(results);
            }
          })
        });
    

        router.post ('/api/question', (req, res) =>{
            const formData = req.body;
            connection.query('INSERT INTO question ...SET ?', formData, (err, results) => {
        
                if (err) {
           
                  // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
                  res.status(500).send('Erreur lors de la récupération du question');
                } else {
           
                  // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
                  res.json(results);
                }
              })
            });
    
            
            app.put('/api/question/:id', (req, res) => {

                // récupération des données envoyées
                const idquestion = req.params.id;
                const formData = req.body;
               
                // connection à la base de données, et insertion du film
                connection.query('UPDATE question SET ? WHERE id = ?', [formData, idquestion], err => {
               
                  if (err) {
                    // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
                    console.log(err);
                    res.status(500).send("Erreur lors de la mise a jour de question");
                  } else {
               
                    // Si tout s'est bien passé, on envoie un statut "ok".
                    res.sendStatus(200);
                  }
                });
               });



               app.delete('/api/question/:id', (req, res) => {
                const idquestion = req.params.id;
                // TODO supprimer les données (étape 2)
                connection.query('DELETE FROM question WHERE id = ?', [idquestion], err => {
                    // TODO envoyer une réponse au client (étape 3)
                    if (err) {
                        console.log(err);
                        res.status(500).send("Erreur lors de la suppression d'un id de question");
                      } else {
                        res.sendStatus(200);
                      }
                });;
              });
             




module.exports = router