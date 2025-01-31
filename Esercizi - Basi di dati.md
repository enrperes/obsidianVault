# Query random 

Selezionare impiegati che afferiscono a un dipartimento con una sede a PN
```sql
  SELECT *
  FROM employee
  WHERE dip = IN(SELECT dnumero
				  FROM sedi_dipartimento
				  WHERE dsede = "pordenone"
  )
```

Selezionare CF degli impiegati che hanno lo stesso cognome di un impiegato che lavora per il DIP 10. 
```sql
 SELECT CF
 FROM EMPLOYEE 
 WHERE SNAME = IN (SELECT SNAME
					FROM EMPLOYEE
					WHERE DIP = 10)
```

Selezionare tutti i dipartimenti nei quali non lavora alcun impiegato che guadagna più di 8000€
```sql
SELECT DNUMERO
FROM DIPARTIMENTO 
WHERE DNUMERO <> ALL (SELECT DNUM 
					FROM EMPLOYEE
					WHERE SALARY > 8000)
```

Selezionare impiegato che percepisce lo stipendio massimo 
```sql
SELECT CF
FROM IMPIEGATO
WHERE STIPENDIO >= ALL(SELECT STIPENDIO
						FROM IMPIEGATO)
```

Selezionare i dipartimenti dove non lavora alcun impiegato che guadagna più di 8000€
```sql
SELECT DNUMERO 
FROM DIPARTIMENTO 
EXCEPT
SELECT DNUM
FROM IMPIEGATO 
WHERE STIPENDIO > 8000
```

Nome e cognome di tutti gli impiegati che hanno una persona a carico del loro stesso sesso con lo stesso nome
```sql
SELECT NOME, COGNOME
FROM IMPIEGATO I
WHERE CF IN (SELECT CF_I
			FROM PERSONA_A_CARICO P
			WHERE I.SEX = P.SEX AND I.NOME = P.NOME)
```

Impiegati che percepiscono stipendio diverso da tutti gli altri impiegati del loro dipartimento 
```sql
SELECT *
FROM EMPLOYEE E
WHERE STIPENDIO NOT IN (SELECT STIPENDIO
						FROM EMPLOYEE
						WHERE CF <> I.CF AND DIP = I.DIP)
```

Selezionare impiegati che non hanno persone a carico 
```sql
SELECT *
FROM IMPIEGATO
WHERE NOT EXISTS (SELECT *
					FROM PERSONA_A_CARICO
					WHERE CF = CF_I)
					
```