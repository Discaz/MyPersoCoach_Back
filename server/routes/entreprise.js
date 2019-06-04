const express = require ('express');
const router = express.Router();
const connection = require('../config')


router.get ('/', (req, res) =>{
  res.status(200).send('welcome to the famoust enterprise of the world! ')
});

module.exports = router