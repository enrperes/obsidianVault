### Parte 1
Classe `StringSlist` per rappresentare liste di stringhe nello stile Scheme. 
- `null?` 
- `car` 
- `cdr` 
- `cons` 
`NULL_STRINGLIST` è il costruttore per una lista vuota. 


![[Pasted image 20250729144724.png||400]] ![[Pasted image 20250729144619.png||300]] ![[Pasted image 20250729144643.png||300]]


1. StringSList btrRange(String, int) $\Large \to$ "+-", 5 $\Large \to$ viene creata un'istanza StringSList. Per vederne il contenuto metodo: `String toString()` 

---

I test descritti nella consegna sono scritti nel `main()` di `StrinSListUtils`

### StringSList
```java
public class StringSList {
     /*
     * Operazioni sulle liste nello stile di scheme
     * 
     * null - null?
     * car  - cdr
     * cons 
     * 
     */

     public static final StringSList NULL_STRINGLIST = new StringSList();

     //Variabili di istanzaà6
     private final boolean vuota;
     private final String primo;
     private final StringSList resto;


     //Costruttore di lista vuota
     public StringSList() 
     {
        this.vuota = true;
        this.primo = "";
        this.resto  = null;
     }

     //Costruttore di lista non vuota
     public StringSList(String s, StringSList lst) 
     {
        this.vuota = false;
        this.primo = s;
        this.resto  = lst;
     }
     

     //Metodo null? di scheme
     public boolean isNull()
     {
        return this.vuota;
     }


     //Metodo car di scheme
     public String car()
     {
        return this.primo;
     }


    //Metodo cdr di scheme
     public StringSList cdr() 
     {
        return this.resto; 
     }


    //Metodo cons di scheme
    public StringSList cons(String s)
    {
        return new StringSList(s, this);
    }

    //Funzione LENGTH
    public int length()
    {
      if(isNull())
         return 0;
      else
         return 1 + this.cdr().length();
    }

    public boolean equals( StringSList lst) 
    {

      if(lst == null)
         return false; 
      else if(lst.isNull())
         return false;
      else if (isNull())
         return false;
      else if( lst.car() == car())
         return cdr().equals(lst.cdr());
      else 
         return false;
    }

    //Funzione LIST-REF: esercizio
    public String listRef( int k ) 
    {                                                                      
        if ( k == 0 ) 
            return car();                     
        else 
            return cdr().listRef(k-1);                  
    }

    //Procedura APPEND
    public StringSList append(StringSList lst)
    {
      if(isNull())
         return lst;
      else
         return cdr().append(lst).cons(this.car());
    }

    //Procedura REVERSE
    public StringSList reverse()
    {
        return reverseRec( NULL_STRINGLIST );
    }

    // metodo di supporto: private!
    private StringSList reverseRec( StringSList re ) 
    {
        if ( isNull() ) 
            return re;
         else 
            return cdr().reverseRec( re.cons(car()) );
        
    }

   //Implementazione del toString
    public String toString()
    {
       
       if(this.isNull())
         return "'()";
       else
       {
         String txt = "( " + car();
         StringSList r = cdr();

         while (!r.isNull()) 
         {
            txt += ", " + r.car();
            r = r.cdr();
         }

         return txt + " )";
       }
    }
} 
```


### StringSListUtils
Funzioni per gestire numeri in notazione ternaria bilanciata (BTR) 
- "+" = +1
- "." = 0
- "-" = -1

```java
public class StringSListUtils {

    // Converte una stringa BTR in un intero
    private static int btrToInt(String btr) {
        int result = 0;
        for (char c : btr.toCharArray()) {
            result *= 3;
            if (c == '+') {
                result += 1;
            } else if (c == '-') {
                result -= 1;
            } // il simbolo '.' corrisponde a 0
        }
        return result;
    }

    // Converte un intero non negativo in notazione BTR
    private static String intToBtr(int value) {
        if (value == 0) {
            return ".";
        }
        StringBuilder sb = new StringBuilder();
        while (value != 0) {
            int rem = value % 3;
            value /= 3;
            if (rem == 2) {
                rem = -1;
                value += 1;
            }
            if (rem == 1) {
                sb.append('+');
            } else if (rem == 0) {
                sb.append('.');
            } else { // rem == -1
                sb.append('-');
            }
        }
        return sb.reverse().toString();
    }

    /**
     * Restituisce una StringSList di n stringhe in notazione BTR,
     * a partire da 'btr'.
     * Esempio: btrRange("+-", 5) -> (+-, +., ++, +--, +-.)
     */
    public static StringSList btrRange(String btr, int n) {
        StringSList result = new StringSList(); // lista vuota
        int start = btrToInt(btr);
        // Costruiamo la lista dal fondo per mantenere l'ordine corretto
        for (int i = n - 1; i >= 0; i--) {
            result = result.cons(intToBtr(start + i));
        }
        return result;
    }


// main() con esempi
    public static void main(String[] args) {
        String btr = "+-";
        int n = 5;
        StringSList btrs = btrRange(btr, n);
        System.out.println("btrs = " + btrs);

        // 1) btrs.append(btrs.reverse().cdr())
        StringSList palindrome = btrs.append(btrs.reverse().cdr());
        System.out.println("btrs.append(btrs.reverse().cdr()) = " + palindrome);

        // 2) btrs.append(btrRange(...).cdr())
        String last = btrs.listRef(btrs.length() - 1);
        StringSList tailRange = btrRange(last, btrs.length() + 1).cdr();
        StringSList extended = btrs.append(tailRange);
        System.out.println("btrs.append(btrRange(...).cdr()) = " + extended);
    }
}
  
```