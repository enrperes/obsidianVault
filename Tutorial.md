> File dove scrivere guide su come fare cose che altrimenti devo googlare ogni volta

---

>[!info]- # HowTo: Creare file .desktop su Linux per linkare eseguibile 
> ### Step 1: 
> Installare file `.appimage` nella cartella `/Downloads`. Il path completo è `/home/enrperes/Downloads/`
> ### Step 2
> Creare icona carina su Affinity designer : ) 
> ### Step 3
> Incollare questo su blocco note: 
> ```
> [Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=
Name=Name of Application
Icon=
> ```
> Inserire il path completo dell'eseguibile su `Exec` e il path dell'icona (`.png`) su `Icon`
>
> ### Step 4 
> Dal terminale, navigare fino a `/.local/share/applications`
> Creare un file `nomeapp.desktop` con il comando: `echo "[pasted .desktop file text] > nomeapp.desktop"`. Per verificare il contenuto del file: 
> `cat nomeapp.desktop`. 

>[!info]- # Git common tasks 
> ![[Git]]


>[!info]- # HowTo: Leggere metadati da immagini
> ### Da terminale Linux
> Navigare nella directory con l'immagine. 
> `exif image.png`
> oppure: 
> `identify -verbose image.png`
> ![[exif_example]]


>[!info]- # HowTo: Read RAM info from Ubuntu terminal
> `sudo lshw -C memory`
> Expected output: 
> ![[memoryinfo]]
> oppure 
> `sudo dmidecode --type 17`
