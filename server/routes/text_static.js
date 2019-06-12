const express = require ('express');
const router = express.Router();
const connection = require('../config')




router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM text_static',(err,results)=>{
    if(err){
      res.status(500).send(' Erreur lors de la recuperation de la récupération d`un texte`')
    }
    else{
      res.json(results)
    }
  })
});

router.get ('/:id', (req, res) =>{
const id = req.params.id;
  
  
  connection.query('SELECT all_text FROM text_static WHERE id= ?',id, (err,results)=>{
    if(err){
      res.status(500).send(' Erreur lors de la récupétation d`un texte`')
    }
    else{
      res.json(results)
    }
  })
});


router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO text_static SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde d'un texte")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})

router.put('/:id', (req, res) => {

  
  const idtext_static = req.params.id;
  const formData = req.body;
 
  
  connection.query('UPDATE text_static SET ? WHERE id = ?', [formData, idtext_static], err => {
 
    if (err) {
      
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour de text_static");
    } else {
 
      
      res.sendStatus(200);
    }
  });
 });

 router.delete('/:id', (req, res) => {
  const idtext_static = req.params.id;
 
  connection.query('DELETE FROM text_static WHERE id = ?', [idtext_static], err => {
     
      if (err) {
          console.log(err);
          res.status(500).send("Erreur lors de la suppression d'un id de text_static");
        } else {
          res.sendStatus(200);
        }
  });;
});



             




module.exports = router