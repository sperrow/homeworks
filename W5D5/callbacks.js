const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

const teaAndBiscuits = function() {
  let first, second;
  reader.question('Would you like tea? ', resp => {
    first = resp;
    console.log(first);

    reader.question('Would you like some biscuits? ', resp => {
      second = resp;
      console.log(second);

      const firstRes = (first === 'yes') ? 'do' : 'don\'t';
      const secondRes = (second === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
};

module.exports = teaAndBiscuits;
