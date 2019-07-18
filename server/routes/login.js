const express = require('express')
const connection = require('../config')
const router = express.Router()


router.get('/',(req, res)=> {
    res.status(200).send('je suis a la racine de login')
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