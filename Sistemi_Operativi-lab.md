---
aliases:
  - labos
  - laboratorio
  - sistemi
  - operativi
---
[[B1_bash.pdf]]

# Bash commands
`man bash`
- Simple command execution
	- 
- List of commands
- Pipeline
- Async execution


---

#  C
C01, C02 pdf 
## Strutture di controllo 
## Tipi 
- Struct (record) sono aggregati di un numero arbitrario di elementi che possono avere tipi differenti. 
	- Ogni elemento (campo) della struttura ha il suo tipo ed è identificato da un nome. 
	- La dichiarazione di `struct nometipo` definisce un nuovo tipo. Sintassi: 
```c
struct nometipo{
	tipo1 campo1;
	tipo2 campo2;
	tipon campon;
};
```


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
2. 