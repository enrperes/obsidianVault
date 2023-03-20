2023-03-02 13:23

Ambiente di sviluppo: [BlueJ]([https://www.bluej.org](https://www.bluej.org/))

# Traduzione programmi Scheme --> Java

```java
/
 * Write a description of class Prova here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
 
public class FirstJavaProgram{
    / Scheme:
     * (define sup-tot-cil
     *  (lambda (r h)
     *      (* (* 2 pi r) (+ r h))
     *      ))
     */
    public static double supTotCil(double r, double h){
        return (2 * Math.PI * r) * (h + r);
    }
}
```

### Conversione plurale F
>[!info]- In Scheme
> ![[Generalizzazione del plurale]]


```java
public static String PluraleF( String sf ){
	return (sf.substring(0, sf.length()-1) + "e");
}
```


### Femminile? 

>[!info]- In Scheme
>![[Procedura per verificare se parola è maschile o femminile]]

```java
public static boolean femminile (String s){
	return (s.charAt(s.length()-1) == 'a');
	// oppure
	return (s.substring (s.length()-1).equals ("a")); //equals per confrontare il contenuto delle stringhe 
}

```


### Plurale? 

>[!info]- In Scheme
>![[Generalizzazione del plurale]]

```java
public static String Plurale (String s ){
	return pluraleF(s);
	} else {
		return pluraleM(s);
		}
//return femminile ? pluraleF : pluraleM
}

```

---

# Java doc
- `public static` == const 
-  `public static main (String [] args) {}`
## Liste nello stile di Scheme 
([[Scheme#Documentation]])
- null
- null? 
- car 
- cdr
- cons
---

Ogni metodo viene riscritto in Java
```Java
IntSList sl;
new IntSlist() //type: InsSList - Scheme: [ null]
sl.isNull()    //type: boolean  - Scheme: [null?]
sl.car()       //type: int      - Scheme: [car]
sl.cdr()       //type: IntSList - Scheme: [cdr]
sl.cons(n)     //type: IntSList - Scheme: [cons]

sl.length()    //type: int      - Scheme: [length]
sl.equals(il)  //type: boolean  - Scheme: [equal]
sl.listRef(i)  //type: int      - Scheme: [list-ref]
sl.append(il)  //type: intSList - Scheme: [append]
sl.reverse()   //type: intSList - Scheme: [reverse]
```

#todo 