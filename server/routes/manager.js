const express = require ('express');
const router = express.Router();
const connection = require('../config')




router.get ('/', (req, res) =>{
  res.status(200).send('your are a terrible manager! ')
});

module.exports = router