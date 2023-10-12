# Java Style Rules
![[Pasted image 20231011101159.png|500]]

### Package names -> `lowerCamelCase`
### Class names -> `UpperCamelCase`
### Method and variable names -> `lowerCamelCase`
##### Methods should start with a verb -> `enrollStudent`

## On names
- **Classes** ~ category
	- Concrete nouns (`Customer, Account, WikiPage..`)
	- Avoid using  general names: `Manager, Processor, Data, Info`...
- **Methods**
	- use *verbs*. (`save, deletePage, getName...`)
- **Variables**, instances ~ thing belonging to a category (class)
	- length of name is proportional to scope size. (blocco in cui la variabile è definita: `i, j` va bene solo per qualche ciclo for o funzioni brevi.)
		- Avoid: 
			- `O` (capital O)
			- `I, l`
		- Don't include variable type in name 

---

I campi di classe hanno `static`