# [[CSS.pdf]]


# CSS3
Ultimo standard (retro-compatibile) 
[Proprietà introdotte con CSS3](https://meiert.com/en/indices/css-properties/)
[Tool per verificare se proprietà è supportata o meno](https://caniuse.com/?search=color)

### Vendor prefix 
I prefissi dei browser sono utilizzati per aggiungere nuove funzioni che potrebbero non far parte delle specifiche CSS finali. 
Il prefisso per Safari e Chrome è `-webkit` 
Ad esempio per `border-radius` nelle vecchie versioni dei browser si usava: ` -webkit-border-radius: 25px;` 

Firefox: `-moz-`
Safari: `-webkit-`
Chrome: `-webkit-` 
Opera: `-ms-` 

## `<style> o <link>`? 
`<style>` include le regole CSS direttamente in HTML. `<link>` permette di collegare un file .css esterno, como per manutenzione e usare proprietà diverse. 

# Selettori


> permettono di identificare gli elementi da modificare

- è possibile usare più selettori nella stessa regola separati da `,`
- I selettori sono **Case sensitive**. 
>[!info]- Selettori
>>[!example]- Universal selector
>>Applies to **all elements** in the documen
>>` *{}`
>
>>[!example]- Type Selector
>>Matches element names
>>`h1, h2, h3 {}`
>
>>[!example]- Class Selector
>>Matches an element whose `class` attribute matches the one specified after the period symbol:
>>`.note{}` -> targets any element whose class attribute is `p.note{}`
>
>>[!example]- ID Selector
>>Matches an element whose `id` attribute has a value that matches the one specified after the hash symbol `#` 
>>`#introduction {}`
>
>>[!example]- Child Selctor 
>>Matches element that is a child of another 
>>`li>a{}`
>
>>[!example]- Descendant Selector
>>Matches an element that is a descendent of another specified element (NOT just a direct chihld of that element)
>>`p a {}`
>
>>[!example]- Adjacent Sibling Selector
>>Matches an element that is the next sibling of another 
>>`h1+p {}` -> targets the first `<p>` element after any `<h1>` element but NOT other `<p>` elements! 
>
>> 

```css 
h1, h2, h3 {font-family: Arian; color: yellow;}
```


