> File dove scrivere guide su come fare cose che altrimenti devo googlare ogni volta

---

>[!info]- Access NAS from terminal #ubuntu 
> `cd /run/user/1000/gvfs/sftp:host=192.168.1.10`
> insert password 
> ### GVfs = "Gnome Virtual file system"

>[!info]-  HowTo: Creare file .desktop su Linux per linkare eseguibile #ubuntu 
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

>[!info]-  Git common tasks 
> ![[Git]]

>[!info]-  HowTo: Leggere metadati da immagini #ubuntu 
> ### Da terminale Linux
> Navigare nella directory con l'immagine. 
> `exif image.png`
> oppure: 
> `identify -verbose image.png`
> oppure: 
> `jpeginfo -C image.jpg`
> ![[exif_example]]

>[!info]-  HowTo: Read RAM info from Ubuntu terminal #ubuntu
>
> `sudo lshw -C memory`
> Expected output: 
> ![[memoryinfo]]
> oppure 
> `sudo dmidecode --type 17`

>[!info]-  HowTo: Reset dataset to default values after editing #uniud 
> dataset: `nycflights13`
> edit: `flights = flights %>% select (year) [...]`
> 
> To reset it, just delete the variable: `rm(flights)`

>[!info]-  HowTo: AutoHotKey
> ![[Pasted image 20230725214139.png|300]]
> Todo: 
> - [ ] Revert Ctrl shift v function for clipboard management

> [!info]- HowTo: show file tree view (PowerShell)
> `cd` to desired folder
> `tree /F` 
ù

> [!info]- HowTo: create symbolic link in home dir #ubuntu 
> ```
> ln -s path/to/deep/nested/folder ~/my-project
> cd my-project 
> ```

> [!info]- HowTo: Compile and run `.cpp` files in terminal #ubuntu 
> ```bash
> nano source.cpp # create/edit file 
> g++ source.cpp -o source-exec # compile file into executable
> ./source-exec # run executable
> ```


