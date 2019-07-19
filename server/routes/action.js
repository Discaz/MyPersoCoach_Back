const express = require ('express');
const router = express.Router();
const connection = require('../config')



  
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

router.get ('/:id', (req, res) =>{
  const id = req.params.id;
  connection.query('SELECT text_response, DATE_FORMAT(date_echeance, "%d/%m/%Y") AS date FROM  action where id= ?',id,(err, results) => {
      if (err) {
       
        res.status(500).send('Erreur lors de la récupération données de la table action');
      } 
      else {
        
        res.json(results);
      }

  })

});

router.get ('/recap/:id', (req, res) =>{
  const id = req.params.id;
  connection.query('SELECT *, DATE_FORMAT(date_echeance, "%d/%m/%Y") FROM  action where summary_id= ?',id,(err, results) => {
      if (err) {
       
        res.status(500).send('Erreur lors de la récupération données de la table action');
      } 
      else {
        
        res.json(results);
      }

  })

});


router.post('/', (req, res) => {
 
  const formData = {
    summary_id: req.body.summary_id,
    text_response: req.body.text_response
   }
  
  connection.query('INSERT INTO action SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde des données de la table action")
      }
      else{
        const respActionId = results.insertId
        //INSERT RESPONSE
        res.status(200).send({respActionId: respActionId})
        console.log('coucou coucou lastresponseId',respActionId)
        
        
       
      }
  })
  
  
})


router.put('/:id', (req, res) => {

const idaction = req.params.id;
const formData = {date_echeance: req.body.date}

connection.query('UPDATE action SET ? WHERE summary_id = ? ', [formData, idaction], err => {
    if (err) {
      
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour des données de la table action");
    } else {
      console.log('cest mon resultat', res)
      res.sendStatus(200);
      
    }

  });

});



router.delete('/:id', (req, res) => {
const idaction = req.params.id;

connection.query('DELETE FROM action WHERE id = ?', [idaction], err => {
    
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