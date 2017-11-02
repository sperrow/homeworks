const madLit = (verb, adjective, noun) => `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`

const isSubstring = (searchString, subString) => searchString.includes(subString)

const fizzBuzz = arr => {
  return arr.filter(el => {
    return (el % 3 === 0 && el % 5 !== 0) || (el % 5 == 0 && el % 3 !== 0);
  });
}

const isPrime = number => {
  if (number == 2) return true;
  for (let i = 2; i < number; i++) {
    if (number % i === 0) return false;
  }
  return true;
}

const firstNPrimes = n => {
  result = [];
  num = 2;
  while (result.length < n) {
    if (isPrime(num)) {
      result.push(num);
    }
    num++;
  }
  return result;
}

const sumOfNPrimes = n => {
  return firstNPrimes(n).reduce((acc, el) => {
    return acc += el;
  }, 0);
}

const titleize = (arr, callback) => {
  result = arr.map(name => {
    return `Mx. ${name} Jingleheimer Schmidt`;
  });
  callback(result);
}

const printCallback = arr => {
  arr.forEach(title => console.log(title));
}


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  function getRandom(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }

  let trick = this.tricks[getRandom(0, this.tricks.length - 1)];
  console.log(`${this.name} is ${trick}!`);
}

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
}

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs";

  return function(new_order) {
    if (new_order) {
      order += ` and ${new_order}`;
    }

    console.log(`${order} please.`);
  };
}
