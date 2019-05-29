const express = require('express')

const router = express.Router()


router.get('/',(req, res)=> {
    res.status(200).send('je suis a la racine de login')

})

router.get('/start',(req, res)=> {
    res.status(200).send('page thematique')
    
})
router.get('/',(req, res)=> {
    res.status(200).send('je suis a la racine de login')
    
})






module.exports = router;