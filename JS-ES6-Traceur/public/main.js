$(document).ready(init);

function init(){
  $('#sq-odds').click(squareOdds);
  $('#dest').click(dest);
  $('#power').click(power);
  $('#generator').click(generator);
}

function generator(){
  var [x,y] = $('#numbers').val().split(',').map(n=>n*1);
  //var output = [for(j of gen(x))j];
  var output = [for(j of gen(x)) for(k of gen(y)) {x:j, y:k}].map(o=>`<div> x:${o.x} y:${o.y}</div>`)
  $('#odds').append(output);
}

function* gen(x){
  for(var i = 0; i < x; i++){
    yield i;
  }
}

function power(){
  var numbers = $('#numbers').val().split(',').map(n=>n*1);
  var output = realPower(...numbers);
  console.log(output);
}

function realPower(base, exponent=2){
  return Math.pow(base, exponent);
}

function dest(){
  var numbers = $('#numbers').val().split(',').map(n=>n*1);
  var [a,v] = areaVol(...numbers);
  console.log(a);
  console.log(v);
}

function areaVol(l,w,h){
  let area = l * w;
  let vol = area * h;
}

function squareOdds(){
  //var output = $('#numbers').val().split(',').map(function(n){return n*1});
  var output = $('#numbers').val().split(',').map(n=>n*1).filter(n=>n%2===1).map(n=>n*n).map(n=>`<div>${n}</div>`);
  $('#odds').append(output);
  console.log(output);
}
