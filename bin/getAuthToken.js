const md5 = require('crypto').createHash('md5');
let key = 'pizzapulls';
// timestamp of the expiration time in future
let exp = (Date.now() / 1000 | 0) + 335445646;
let streamId = '/live/PizzaPulls';
console.log(exp+'-'+md5.update(streamId+'-'+exp+'-'+key).digest('hex'));