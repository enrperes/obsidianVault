S#risorsa 

# [[Git]]
# [[HOME]]
# [[CSS-snippets-tests|CSS Obsidian Snippets]]
# [[LaTeX]]
[[testpage1]]

FOOTNOTE [^1]

---
[[Nord Theme]]

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

**BOLD** 
*Italic* 
***BOLD AND ITALIC***


> Quote
> *Lorem Ipsum ....*
> 

---

# Callouts: 

>[!example]+ Callout
>Callout text 



https://notes.nicolevanderhoeven.com/Obsidian+Callouts
#### Supported icons: 

	-   note
	-   abstract, summary, tldr
	-   info, todo
	-   tip, hint, important
	-   success, check, done
	-   question, help, faq
	-   warning, caution, attention
	-   failure, fail, missing
	-   danger, error
	-   bug
	-   example
	-   quote, cite
>[!example] Callouts Icons
>>[!info]
>
>>[!note]-
>
>
>>[!tip]
>
>>[!abstract]
>
>>[!success]
>
>>[!help]
>
>>[!warning]
>
>>[!fail]
>
>>[!error]
>
>>[!bug]
>
>>[!example]
>
>>[!quote]


---

#  $$\Huge \;\;\LaTeX$$
Aggiungere prima del blocco di testo: 
```latex
\Huge
\huge
\LARGE
\Large
\large
\normalsize
\small
\tiny

---
\emph{italic text}
\unrerline{underlined text}
\textbf{boldtext}

---

{3\choose 4} -> binomial coeff

```

---
[^1]: Footnotes look like this.
---

# Homepage
https://thesweetsetup.com/creating-obsidian-dashboard/


# Personalization
CSS snippet found in `.obsidian\snippets\snip.css`
**can only use terminal to change the file!**
- `ls` to view all files in directory
- `echo` to create file 
- `echo "body.obsidian-app {--background-primary: #333333;}" > snip.css"`  -> `>`  sovrascrive, `>>` giustappone. 
- `cat snip.css` per vedere il contenuto del file. 


`,tex \hsize=60em \newcount\a \a=1000 \loop\ifnum\a>0 AAAAAAA \advance\a-1\repeat`
