2023-03-02 13:23

Ambiente di sviluppo: [BlueJ]([https://www.bluej.org](https://www.bluej.org/))

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