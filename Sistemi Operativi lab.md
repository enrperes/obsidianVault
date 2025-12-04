==Shell== = interprete di comandi. Acquisisce, decodifica, esegue. 
*sh, csh, ksh, bash* sono 

## Autenticazione
UNIX: sistema multi utente. 
A ogni utente corrisponde un username, password e *UID*. 
Gli utenti possono far parte di *group*, identificati da *GID*. 
Ogni utente o gruppo ha privilegi specifici. 
*root* è l'utente con massimi privilegi. 

Ad ogni utente è assegnata una home directory nel filesystem 

```bash
 man thing # spiega manuale
 whatis thing # prima riga manuale
 apropos thing # comandi relativi 
```

### Comandi 
`ls -l`
![[Pasted image 20251127161738.png#invert|center|500]]
![[Pasted image 20251127161901.png#invert|center|500]]
![[Pasted image 20251127161911.png#invert|center|500]]


## Pipeline
Esecuzione in seuqenza di più comandi
vincolo: output di ogni comando fa da input al comando successivo. 

```bash
 comando1 | comando2 | comandon... 
 
 ES: 
 
 ls -l -a | grep thing | sort | ...
```

## Async exec
Esecuzione asincrona di comandi, in background 
```bash
 comando & 
```

Bash esegue il comando in una subshell. 
con `jobs` si visualizza la lista di tutti i job. Ognuno possiede un job number, oltre al PID. 





# C

```bash
 gcc -o hello hello.c 
```
-o hello indica che il nome dell'eseguibile sia hello

## Funzioni
Ogni funzione comprende 
- la *dichiarazione* che deve sempre precedere l'uso della funzione (nome, tipo di output, tipo, numero argomenti)
- la *definizione* che descrive l'implementazione. Costituita da intestazione, che richiama il prototipo e dalla funzione "{ }" 

```c
int func(int, int, float);
  
int func(int x, int val, float arg){
	int varlocale = val * x; 
	if(arg>0)
		return(varlocale)
	else 
		return (x+2*val);
} 
```

- parametri passati by value: le modifiche effettuate nel corpo della funzione non hanno effetto all'esterno della funzione
- Le variabili dichiarate nel corpo funzione sono tutte locali e non accessibili fuori 
- lo *scope* delle variabili locali è il corpo della funzione. 

le variabili *static* hanno sempre scope interno alla funzione ma lifetime = esecuzione del programma. Quindi mantiene il valore tra una chiamata alla funzione e la successiva. 
Possono anche essere globali. 

# Puntatori
> Variabile che ha come valore l'indirizzo di una locazione di memoria (che solitamente contiene il valore di un'altra variabile)

Esempio:
```c
 int intero = 20; // ptr_intero ha tipo int
 int *ptr_intero; // il puntatore a intero
 int* ptrbis // un altro puntatore a intero 
 
 ptr_intero = &intero; // & permette di accedere all'indirizzo di una variabile
intero = *ptr_intero; // assegna il valore puntato
*ptr_intero = intero; // scrive all'indirizzo
```

Per tutti i tipi T esiste il corrispondente tipo T*, puntatore a T. 
Esempi: 
```c
char *ptr_c, *altroptr;
long double *ptr_doppiolungo;
tipopersona *puntaPersona;

// anche per gli stessi tipi di puntatore:
char **ppc; // puntatore a puntatore a char
long **pp1; // puntatore a puntatore a long
```

La costante predefinita `NULL` indica il puntatore nullo. Può essere usato con qualsiasi puntatore. 

Esempio con **side effect**

```c
int x=1, y=2, z[10];
int *ip; 

z[0]=5;
ip = &x; // ora ip punta a x, la stessa locazione di memoria viene acceduta tramite x e ip
y = *ip; // ora y vale 1, come x
*ip = 0; // ora x vale 0
ip = &z[0]; // ora ip punta a z[0]
```

ip può essere usato per arrivare al valore di x 

## Precedenza operatori
1. Operatori unari * e & hanno precedenza rispetto agli operatori binari, quindi: `y = *ip + 1` prende l'oggetto puntato da `ip` lo incrementa e assegna il risultato a `y`



