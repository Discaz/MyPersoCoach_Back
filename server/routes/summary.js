const express = require ('express');
const router = express.Router();
const connection = require('../config')



  
router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM summary',(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données de la table summary')
     }
     else{
       res.json(results)
     }

  })

});

router.get ('/:id', (req, res) =>{
  const id = req.params.id;

  connection.query('SELECT * FROM summary WHERE id= ?',id,(err, results) => {
      if (err) {
        
        res.status(500).send('Erreur lors de la récupération données de la table summary');
      } 
      else {
        
        res.json(results);
      }

  })

});



router.post('/', (req, res) => {
  const formData = {
    id: req.body.id,
    problem_id: req.body.problem_id
  }
  connection.query('INSERT INTO summary SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde des données de la table summary")
      }
      else{
        // results.insertId allows us to get last id inserted into summary table

        const lastId = results.insertId
        console.log(lastId);
        res.status(200).send({summaryId: lastId})
        console.log('coucou coucou',lastId)
      }
  })
})




router.put('/:id', (req, res) => {

  const idsummary = req.params.id;
  const formData = {
    problem_id: req.body.problem_id
  }
  
  connection.query('UPDATE summary SET ? WHERE id = ?', [formData, idsummary], err => {
      if (err) {
        
        console.log(err);
        res.status(500).send("Erreur lors de la mise a jour des données de la table summary");
      } else {
        
        res.sendStatus(200);
        console.log({summaryId: formData.id})
      }
  
    });
  
  });


router.delete('/:id', (req, res) => {
const idsummary = req.params.id;

connection.query('DELETE FROM summary WHERE id = ?', [idsummary], err => {
    
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id de la table summary");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router