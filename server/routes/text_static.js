const express = require ('express');
const router = express.Router();

router.get ('/', (req, res) =>{
    connection.query('SELECT * FROM text_static',(err, results) => {

        if (err) {
   
          // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
          res.status(500).send('Erreur lors de la récupération de text_static');
        } else {
   
          // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
          res.json(results);
        }
      })
    });





    router.get ('/:id', (req, res) =>{
        connection.query('SELECT * FROM text_static',(err, results) => {
            
            if (err) {
       
              // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
              res.status(500).send('Erreur lors de la récupération de text_static');
            } else {
       
              // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
              res.json(results);
            }
          })
        });
    

        router.post ('/api/text_static', (req, res) =>{
            const formData = req.body;
            connection.query('INSERT INTO text_static ...SET ?', formData, (err, results) => {
        
                if (err) {
           
                  // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
                  res.status(500).send('Erreur lors de la récupération de text_static');
                } else {
           
                  // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
                  res.json(results);
                }
              })
            });
    
            
            app.put('/api/text_static/:id', (req, res) => {

                // récupération des données envoyées
                const idtext_static = req.params.id;
                const formData = req.body;
               
                // connection à la base de données, et insertion du film
                connection.query('UPDATE text_static SET ? WHERE id = ?', [formData, idtext_static], err => {
               
                  if (err) {
                    // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
                    console.log(err);
                    res.status(500).send("Erreur lors de la mise a jour de text_static");
                  } else {
               
                    // Si tout s'est bien passé, on envoie un statut "ok".
                    res.sendStatus(200);
                  }
                });
               });



               app.delete('/api/text_static/:id', (req, res) => {
                const idtext_static = req.params.id;
                // TODO supprimer les données (étape 2)
                connection.query('DELETE FROM text_static WHERE id = ?', [idtext_static], err => {
                    // TODO envoyer une réponse au client (étape 3)
                    if (err) {
                        console.log(err);
                        res.status(500).send("Erreur lors de la suppression d'un id de text_static");
                      } else {
                        res.sendStatus(200);
                      }
                });;
              });
             




module.exports = router