const router = require('express').Router();

const auth = require('./auth');
const article = require('./article');

router.use('/api/auth', auth);
router.use('/api/article', article);

module.exports = router;
