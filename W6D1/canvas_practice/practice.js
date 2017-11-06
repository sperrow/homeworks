// document.addEventListener("DOMContentLoaded", function(){
//   const canvasEl = document.getElementById('mycanvas');
//   canvasEl.width = 500;
//   canvasEl.height = 500;
//   const ctx = canvasEl.getContext('2d');
//   ctx.fillStyle = 'red';
//   ctx.fillRect(50, 50, 50, 50);
//   ctx.beginPath();
//   ctx.arc(270, 270, 50, 0, 2 * Math.PI);
//   ctx.strokeStyle = 'purple';
//   ctx.lineWidth = 5;
//   ctx.stroke();
//   ctx.fillStyle = 'pink';
//   ctx.fill();
// });

var sun = new Image();
var moon = new Image();
var earth = new Image();
function init() {
  sun.src = 'https://mdn.mozillademos.org/files/1456/Canvas_sun.png';
  moon.src = 'https://mdn.mozillademos.org/files/1443/Canvas_moon.png';
  earth.src = 'https://mdn.mozillademos.org/files/1429/Canvas_earth.png';
  window.requestAnimationFrame(draw);
}

function draw() {
  const canvasEl = document.getElementById('mycanvas');
  canvasEl.width = 500;
  canvasEl.height = 500;
  var ctx = canvasEl.getContext('2d');

  ctx.globalCompositeOperation = 'destination-over';
  ctx.clearRect(0, 0, 300, 300); // clear canvas

  ctx.fillStyle = 'rgba(0, 0, 0, 0.4)';
  ctx.strokeStyle = 'rgba(0, 153, 255, 0.4)';
  ctx.save();
  ctx.translate(150, 150);

  // Earth
  var time = new Date();
  ctx.rotate(((2 * Math.PI) / 60) * time.getSeconds() + ((2 * Math.PI) / 60000) * time.getMilliseconds());
  ctx.translate(105, 0);
  ctx.fillRect(0, -12, 50, 24); // Shadow
  ctx.drawImage(earth, -12, -12);

  // Moon
  ctx.save();
  ctx.rotate(((2 * Math.PI) / 6) * time.getSeconds() + ((2 * Math.PI) / 6000) * time.getMilliseconds());
  ctx.translate(0, 28.5);
  ctx.drawImage(moon, -3.5, -3.5);
  ctx.restore();

  ctx.restore();

  ctx.beginPath();
  ctx.arc(150, 150, 105, 0, Math.PI * 2, false); // Earth orbit
  ctx.stroke();

  ctx.drawImage(sun, 0, 0, 300, 300);

  window.requestAnimationFrame(draw);
}

init();




var img = new Image();

// User Variables - customize these to change the image being scrolled, its
// direction, and the speed.

img.src = 'https://mdn.mozillademos.org/files/4553/Capitan_Meadows,_Yosemite_National_Park.jpg';
var CanvasXSize = 800;
var CanvasYSize = 200;
var speed = 30; // lower is faster
var scale = 1.05;
var y = -4.5; // vertical offset

// Main program

var dx = 0.75;
var imgW;
var imgH;
var x = 0;
var clearX;
var clearY;
var ctx;

img.onload = function() {
  imgW = img.width * scale;
  imgH = img.height * scale;

  if (imgW > CanvasXSize) { x = CanvasXSize - imgW; } // image larger than canvas
  if (imgW > CanvasXSize) { clearX = imgW; } // image width larger than canvas
  else { clearX = CanvasXSize; }
  if (imgH > CanvasYSize) { clearY = imgH; } // image height larger than canvas
  else { clearY = CanvasYSize; }

  // get canvas context
  ctx = document.getElementById('yosemite-canvas').getContext('2d');

  // set refresh rate
  return setInterval(draw2, speed);
};

function draw2() {
  ctx.clearRect(0, 0, clearX, clearY); // clear the canvas

  // if image is <= Canvas Size
  if (imgW <= CanvasXSize) {
    // reset, start from beginning
    if (x > CanvasXSize) { x = -imgW + x; }
    // draw additional image1
    if (x > 0) { ctx.drawImage(img, -imgW + x, y, imgW, imgH); }
    // draw additional image2
    if (x - imgW > 0) { ctx.drawImage(img, -imgW * 2 + x, y, imgW, imgH); }
  }

  // if image is > Canvas Size
  else {
    // reset, start from beginning
    if (x > (CanvasXSize)) { x = CanvasXSize - imgW; }
    // draw aditional image
    if (x > (CanvasXSize-imgW)) { ctx.drawImage(img, x - imgW + 1, y, imgW, imgH); }
  }
  // draw image
  ctx.drawImage(img, x, y,imgW, imgH);
  // amount to move
  x += dx;
}
