const express = require('express')
const connection = require('../config')
const router = express.Router()


router.get('/',(req, res)=> {
    res.status(200).send('je suis a la racine de login')

})



module.exports = router;