# JS
```js

eval(string)
console.log(eval("2+2"));
//expected output: 4

```
___

### Equazioni differenziali 
##### $$ V_c(t) = e(1-e^{- \dfrac{t}{\tau}}) $$
$\tau$ = costante di tempo, tangente della curva nel punto 0 = $R*C$

parametri: $h, \tau, k$
Pulsante calcola che applica la formula ft + h/tau
```js
function calcola(){
var N = document.getElementById("N").value -0;
var Tau = ...;
var K = ...;
var F0 = ...;
var t = ...;
var h = t/n; var i, Ft = F0; 

for (i=0; i<N; i++){
Ft = Ft + h/tau * [K-Ft];
}

}
```