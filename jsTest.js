var a = 1;
var b = 5;//b braucht var davor sonst führt chrome das ganze nicht aus
var c = Array("eins", "zwei", "drei");
function test(e,f){
    for(g in c){
        var b = e+a;
        a=a+1;
    }
    c=[f];
}
console.log(a+" "+b); //a=1 b=5
test(4,5);
console.log(a+" "+b);//a=4 b=5
test(6,7);
console.log(a+" "+b);//a=5 b=5