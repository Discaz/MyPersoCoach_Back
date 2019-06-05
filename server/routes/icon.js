const express = require ('express');
const router = express.Router();
const connection = require('../config')


const bodyParser = require('body-parser');

router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true })
);



router.get ('/', (req, res) =>{
  connection.query('SELECT * FROM icon',(err,results)=>{
    if(err){
      res.status(500).send(' Erreur lors de la recuperation de la récupération d`un icon`')
    }
    else{
      res.json(results)
    }
  })
});

router.get ('/:id', (req, res) =>{
const id = req.params.id;
  
  
  connection.query('SELECT * FROM icon WHERE id= ?',id, (err,results)=>{
    if(err){
      res.status(500).send(' Erreur lors de la récupération d`un icon`')
    }
    else{
      res.json(results)
    }
  })
});


router.post('/', (req, res) => {
  const formData = req.body;
  connection.query('INSERT INTO icon SET ? ', formData, (err, results)=> {
      if(err){
          console.log(err);
          res.status(500).send("Erreur lors de la sauvegarde d'un icon")
      }
      else{
          res.sendStatus(200)
      }
  })
  
  
})

router.put('/:id', (req, res) => {

  
  const idIcon = req.params.id;
  const formData = req.body;
 
  
  connection.query('UPDATE icon SET ? WHERE id = ?', [formData, idIcon], err => {
 
    if (err) {
      
      console.log(err);
      res.status(500).send("Erreur lors de la mise a jour de icon");
    } else {
 
      
      res.sendStatus(200);
    }
  });
 });

 router.delete('/:id', (req, res) => {
  const idIcon = req.params.id;
  
  connection.query('DELETE FROM text_static WHERE id = ?', [idIcon], err => {
      
      if (err) {
          console.log(err);
          res.status(500).send("Erreur lors de la suppression d'un id de l'icon");
        } else {
          res.sendStatus(200);
        }
  });;
});

module.exports = router