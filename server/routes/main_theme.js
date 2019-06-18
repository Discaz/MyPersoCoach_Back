const express = require ('express');
const router = express.Router();
const connection = require('../config')


  
router.get ('/', (req, res) =>{
  connection.query('SELECT all_text, picture_src FROM main_theme JOIN text_static ts ON main_theme.text_static_id = ts.id JOIN icon ON main_theme.icon_id = icon.id',(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données de la table main_theme')
     }
     else{
       res.json(results)
     }

  })

});
  
router.get ('/:id', (req, res) => {
  const id = req.params.id
  
  connection.query(`select all_text, picture_src from main_theme join text_static ts on main_theme.text_static_id = ts.id join icon on main_theme.icon_id = icon.id where main_theme.id = ${id}`,(err, results)=> {
     if(err){
        res.status(500).send('Erreur lors de la récupération des données')
     }
     else{


       res.json(results)
     }

  })

});

router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO main_theme SET ?', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde de d'un employee")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})





router.put('/:id', (req, res) => {

const idmaintheme = req.params.id;
const formData = req.body;


connection.query('UPDATE main_theme SET ? WHERE id = ?', [formData, idmaintheme], err => {
    if (err) {
     
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour de main_theme");
    } else {
      
      res.sendStatus(200);
    }

  });

});


router.delete('/:id', (req, res) => {
const idmaintheme = req.params.id;

connection.query('DELETE FROM main_theme WHERE id = ?', [idmaintheme], err => {
   
    if (err) {
      console.log(err);
      res.status(500).send("Erreur lors de la suppression d'un id main_theme");
    } 
    else {
      res.sendStatus(200);
    }

  });

});





module.exports = router