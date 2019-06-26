const express = require ('express');
const router = express.Router();
const connection = require('../config')



  
router.get ('/', (req, res) =>{
  connection.query(`select problem.id, all_text, picture_src from problem join text_static ts on problem.text_static_id = ts.id join icon on problem.icon_id = icon.id`,(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données de la table problem')
     }
     else{
       res.json(results)
     }

  })

});

router.get ('/:id', (req, res) =>{
  const id = req.params.id;
  connection.query(`select all_text, picture_src from problem join text_static ts on problem.text_static_id = ts.id join icon on problem.icon_id = icon.id where problem.id = ${id}`, id,(err, results) => {
      if (err) {
      
        res.status(500).send('Erreur lors de la récupération données de la table problem');
      } 
      else {
       
        res.json(results);
      }

  })

});


router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO problem SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde des données de la table problem")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
});



router.put('/:id', (req, res) => {

const idproblem = req.params.id;
const formData = req.body;


connection.query('UPDATE problem SET ? WHERE id = ?', [formData, idproblem], err => {
    if (err) {
      
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour des données de la table problem");
    } else {
      
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const idproblem = req.params.id;

connection.query('DELETE FROM problem WHERE id = ?', [idproblem], err => {
    
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id de la table problem");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router