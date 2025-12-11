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

# Funzioni

(il passaggio parametri avviene sempre per valore)
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

## Struct 
(=record) 
> Aggregati di numero arbitrario di elementi, con tipi differenti


```c
 struct nome {
	 tipo1 campo1;
	 ...
	 tipon campon;
 } 
```

Le variabili struct si chiamano poi così: 
```c
struct nome variabile = {10, "x"};
```

L'accesso ai valori dei campi si effettua con la dot.notation: 

```c
 persona1.eta = 20;  
```

L'assegnamento è possibile tra variabili dello stesso tipo struct
Operatori di confronto == e != non possono essere usati


## Union

```c
 union nomeTipo {
	 tipo1 campo1;
	 tipo2 campo2; 
 };
```


### Differenze
Negli struct ogni membro ha un proprio spazio di memoria. 
Union: tutti i membri condividono la stessa area di memoria

Struct: per rappresentare oggetti che contengono contemporaneamente più valori diversi. 
Union: quando un solo valore fra i membri è valido in un dato momento. 


# Puntatori
> Variabile che ha come valore l'indirizzo di una locazione di memoria (che solitamente contiene il valore di un'altra variabile)

`&`  permette di accedere all'indirizzo di una variabile: 
```c
 ptr_intero = &intero;  
```

`*`  denota l'oggetto puntato:
```c
intero = *ptr_intero // assegna il valore puntato
*ptr_intero = intero // scrive all'indirizzo 
```

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


### Puntatori e Array
Il nome dell'array è un sinonimo per la locazione del primo elemento. 

Puntatori usati come parametro di funzioni per il lpassaggio come riferimento. 
- qualsiasi puntatore può essere passato come argomento ad una funzione
- Il passaggio è by-value quindi il valore del puntatore (= un indirizzo) non sarà modificato. 
- L'oggetto puntato può essere modificato internamente alla funzione e la modifica "sopravvive" alla terminazione della funzione. 

```c
 void swap (int *pa; int *pb){
	 int temp = *pa;
	 *pa = *pb;
	 *pb = temp;
 } 
 
swap(&x, &y);
```

Le copie locali alla funzione sono indirizzi di memoria dove sono memorizzati gli interi x e y da scambiare. 

### Array come parametri di funzioni 
Il nome dell'array coincide con l'indirizzo della sua prima componente. Quindi gli array sono passati per riferimento. 

```c
 void func (int vet[]){
	 vet[0] = 12; 
 } 
 
 // equivale a 
 
void func (int *vet){
	vet[0] = 12; 
}
```

### Struct & pointers

```c
 (*p_pers).età  // dot notation con pointer
 // equivale a 
 p_pers->età // arrow notation 
```

### Puntatori a funzioni e funzioni come argomento
```c
 void map (int (fun) (int, int) // parametro funzione
	 int x[], int y[], int z[]{
		 int i;
		 for (i=0; i<5; i++){
			 z[i] = fun(X[i], Y[i]); // chiama la funzione passata come parametro
		 }
	 }
 ) 
```


### `malloc()` 
Funzione per allocare dinamicamente spazio di memoria tramite puntatori 
`void *malloc(size_t size);`
Alloca uno spazio di memoria di `size` byte e restituisce un puntatore a tale spazio. 
In caso di errore restituisce NULL
Tipo di puntatore: `void *` quindi è necessario convertirlo nel tipo che serve. 

```c
 int *p; // dichiara e alloca un puntatore a int ma non alloca lo spazio per l'intero puntato 
 float *pf; // dichiara e alloca un puntatore a float ma non alloca lo spazio per il float 
 
 p = (int*)malloc(sizeof(int)); // spazio per un int 
 *p = 10; // ora si può accedere all'int puntato 
 
 pf = (float*)malloc(20*sizeof(float)); // ancora meglio: alloco e controllo se veramente allocato. 
 if(pf == NULL)
	 exit(EXIT_FAILURE);
```


Quindi: 
- Se T è un tipo di dato 
- ptr è un puntatore di tipo T*
Lo statement: 
```c
 ptr = (T*)malloc(N * sizeof(T));
```

alloca lo spazio contiguo per contenere N elementi di tipo T
(alloca lo spazio per contenere un array di N elementi di tipo T). 
Assegna a ptr il puntatore alla prima locazione di tale zona di memoria 
Ora gli N elementi possono essere acceduti alla prima locazione di tale zona di memoria (= primo elemento dell'array)
Gli N elementi possono essere acceduti con l'aritmetica dei puntatori: 
- `*(ptr+3)` oppure `ptr[3]` per accedere al 4o elemento dell'array. 
Lo spazio allocato da `malloc` non è inizializzato quindi il contenuto è indeterminato

La funzione 
```c
 void *calloc(size_t nmemb, size_t size) 
```

Alloca lo spazio per nmemb elementi, ciascuno di dimensione size e ==azzera== la memoria allocata. 


## `make` 

> Utility che permette di mantenere gruppi di file in modo coordinato / interdipendente 

Scopo: 
- compilare solo i file che sono cambiati 

Legge un **MakeFile** che contiene regole nella forma: 

```
 target: dipendenze
 <TAB> comando da eseguire  
```


Esempio di MakeFile: 

```c
main: main.o utils.o
	gcc main.o utils.o -o main

main.o: main.c utils.h
	gcc -c main.c

utils.o: utils.c utils.h
	gcc -c utils.c

clean:
	rm -f *.o main
```

Esempio: 
1. scrivere Makefile che contenga i comandi per:
	1. Creare un file listato.txt che contenga l'output del comando ls -altr ${HOME}
	2. Creare un file conteggio.txt che contenga il numero di righe di listato.txt
	3. Mostrare il contenuto di conteggio.txt

Soluzione: 
```
listato.txt:
		ls -alrt ${HOME} > listato.txt

conteggio.txt: listato.txt
		wc -l listato.txt > conteggio.txt
		
		
mostra: conteggio.txt
		echo -e "\n\nNumero di righe:\n"
		Invalid date
		
		
clean: 
		rm -f listato.txt conteggio.txt
```

