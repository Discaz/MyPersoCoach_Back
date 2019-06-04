const express = require ('express');
const router = express.Router();
const connection = require('../config')



router.get ('/', (req, res) =>{
  res.status(200).send('Problem page ! ')
});
// router.get ('/', (req, res) =>{
//     connection.query('SELECT * FROM  problem',(err, results) => {

//         if (err) {
   
//           // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
//           res.status(500).send('Erreur lors de la récupération de problem (Problématiques)');
//         } else {
   
//           // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
//           res.json(results);
//         }
//       })
//     });





//     router.get ('/:id', (req, res) =>{
//         connection.query('SELECT * FROM  problem',(err, results) => {
            
//             if (err) {
       
//               // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
//               res.status(500).send('Erreur lors de la récupération du problem');
//             } else {
       
//               // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
//               res.json(results);
//             }
//           })
//         });
    

//         router.post ('/api/problem', (req, res) =>{
//             const formData = req.body;
//             connection.query('INSERT INTO problem ...SET ?', formData, (err, results) => {
        
//                 if (err) {
           
//                   // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
//                   res.status(500).send('Erreur lors de la récupération du problem');
//                 } else {
           
//                   // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
//                   res.json(results);
//                 }
//               })
//             });
    
            
//             router.put('/api/problem/:id', (req, res) => {

//                 // récupération des données envoyées
//                 const idproblem = req.params.id;
//                 const formData = req.body;
               
//                 // connection à la base de données, et insertion du film
//                 connection.query('UPDATE problem SET ? WHERE id = ?', [formData, idproblem], err => {
               
//                   if (err) {
//                     // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
//                     console.log(err);
//                     res.status(500).send("Erreur lors de la mise a jour de problem");
//                   } else {
               
//                     // Si tout s'est bien passé, on envoie un statut "ok".
//                     res.sendStatus(200);
//                   }
//                 });
//                });



//                router.delete('/api/problem/:id', (req, res) => {
//                 const idproblem = req.params.id;
//                 // TODO supprimer les données (étape 2)
//                 connection.query('DELETE FROM problem WHERE id = ?', [idproblem], err => {
//                     // TODO envoyer une réponse au client (étape 3)
//                     if (err) {
//                         console.log(err);
//                         res.status(500).send("Erreur lors de la suppression d'un id de problem");
//                       } else {
//                         res.sendStatus(200);
//                       }
//                 });;
//               });
             




module.exports = router