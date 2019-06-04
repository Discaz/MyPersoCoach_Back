const express = require ('express');
const router = express.Router();
const connection = require('../config')


router.get ('/', (req, res) =>{
  res.status(200).send('nice Icon ! ')
});

module.exports = router