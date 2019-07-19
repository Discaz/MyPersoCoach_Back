const express = require('express')
const connection = require('../config')
const router = express.Router()
// On require bcrypt pour la gestion des mots de passe
const bcrypt = require("bcryptjs");

// On enregistre un utilisateur
router.post('/', (req, res) => {
    // On cherche si un utilisateur existe avec l'email renseigné.
    connection.query('SELECT password FROM manager WHERE email="'+req.body.email+'"' ,(err, results) => {
        if (err) {  
            res.status(500).send('Erreur lors de la récupération données de la table manager');
        } else {
            // Si l'on recoit un tableau vide
            // Les logins sont sans résultat
            // On retour false
            if (results && results[0].length != 0) {
                // On check si le mot de passe corresponds
                const result = bcrypt.compareSync(req.body.password, results[0].password);
                if (result) {
                    // Utilisateur reconnu
                    res.json('Utilisateur connecté.');
                }else{
                    res.json('Désolé, le mot de passe ne corresponds pas à votre nom utilisateur.');
                }   
            }else{
                res.json('Désolé, le mot de passe ou le nom utilisateur est érroné.');
            }
        }
    })
})
  
// On enregistre un utilisateur
router.post('/register', (req, res) => {
  
    const formData = req.body;
  
    connection.query('INSERT INTO manager SET ? ', formData, (err, results)=> {
        if(err){
            res.status(500).send("Erreur la table manager")
        }
        else{
            res.sendStatus(200)
        }
    })
    
})

// On enregistre un utilisateur
router.post('/check-email', (req, res) => {
  
    connection.query(`SELECT email FROM manager WHERE email="${req.body.email}"` ,(err, results) => {
        if (err) {  
            res.status(500).send('Erreur lors de la récupération données de la table manager');
        }
        else {
            res.json(results);
        }
    })   
})

module.exports = router;