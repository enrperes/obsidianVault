<head>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1> CURRICULUM VITAE </h1>
        <form action="index.html">
            <table border="1" align="center" cellspacing="0" cellpadding="4">
               <!-- <caption>Tabella con i bordi</caption> -->
                <tbody><tr>
                    <!-- <td colspan="2"><hr></td> -->
                </tr>
                <tr>
                    <td colspan="2"><b>INFORMAZIONI PERSONALI</b></td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Nome e cognome
                        </p>
                    </td>
                    <td>
                        <input name="nomeCognome" type="text" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Indirizzo
                        </p>
                    </td>
                    <td>
                        <input type="text" name="indirizzo" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Telefono
                        </p>
                    </td>
                    <td>
                        <input type="text" name="telefono" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            E-mail
                        </p>
                    </td>
                    <td>
                        <input type="tel" name="email" id="email" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Nazionalità
                        </p>
                    </td>
                    <td>
                        <select name="naz" id="naz">
                            <option value="IT">Italiana</option>
                            <option value="FR">Francese</option>
                            <option value="TD">Tedesca</option>
                            <option value="EN">Inglese</option>
                            <option value="O">Altro</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Data di nascita
                        </p>
                    </td>
                    <td>
                        <input type="date" name="date" id="date">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                       <h3> ESPERIENZA LAVORATIVA <br> (Partendo dalla più recente)</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Periodo
                        </p>
                    </td>
                    <td>
                        Da
                        <input type="text" size="15">
                        a 
                        <input type="text" size="15">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Nome e indirizzo datore lavoro
                        </p>
                    </td>
                    <td>
                        <input type="text" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Tipo azienda
                        </p>
                    </td>
                    <td>
                        <input type="text" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Principali mansioni e responsabilità
                        </p>
                    </td>
                    <td>
                        <textarea name="mansioni" id="mansioni" cols="50" rows="5"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr></td>
                </tr>
                <tr>
                    <td colspan="2">
                        ISTRUZIONE E FORMAZIONE <br> (partendo dalla più recente)
                    </td>
                </tr>
                <tr><td>
                        <p align="right">
                            Periodo
                        </p>
                    </td>
                    <td>
                        Da
                        <input type="text" size="15">
                        a 
                        <input type="text" size="15">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Nome istituto/Università
                        </p>
                    </td>
                    <td>
                        <input type="text" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Qualifica conseguita
                        </p>
                    </td>
                    <td>
                        <input type="text" size="40">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>principali materie studiate</p>
                    </td>
                    <td>
                        <textarea name="materie" id="materei" cols="50" rows="5"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Periodo
                        </p>
                    </td>
                    <td>
                        Da
                        <input type="text" size="15">
                        a 
                        <input type="text" size="15">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            Principali materie studiate
                        </p>
                    </td>
                    <td>
                        <textarea name="materie" id="materei" cols="50" rows="5"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr></td>
                </tr>
                <tr>
                    <td colspan="2">
                        CAPACITÀ E COMPETENZE PERSONALI<br>Acquisite nel corso della vita e della carriera<br>non necessariamente certificate
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr></td>
                </tr>
                <tr>
                    <td>
                        <p align="right">
                            Lingua madre
                        </p>
                    </td>
                    <td>
                        <select name="naz" id="naz">
                            <option value="IT">Italiana</option>
                            <option value="FR">Francese</option>
                            <option value="TD">Tedesca</option>
                            <option value="EN">Inglese</option>
                            <option value="O">Altro</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            ALTRA LINGUA (1)
                        </p>
                    </td>
                    <td>
                        <input type="text" name="lingua2">
                    </td>
                </tr>
                <tr>
                    <td>
                        Capacità di lettura
                    </td>
                    <td>
                        <input name="capacita" type="radio">Eccellente <input name="capacita" type="radio">Buono <input name="capacita" type="radio">Elementare
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            ALTRA LINGUA (2)
                        </p>
                    </td>
                    <td>
                        <input type="text" name="lingua2">
                    </td>
                </tr>
                <tr>      
                    <td>
                        Capacità di lettura
                    </td>
                    <td>
                        <input name="capacita" type="radio">Eccellente <input name="capacita" type="radio">Buono <input name="capacita" type="radio">Elementare
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr></td>
                </tr>
                <tr>
                    <td align="right">
                        CAPACITÀ E COMPETENZE<br>ORGANIZZATIVE
                    </td>
                    <td>
                        <input name="uno" type="checkbox">Amministrazione<br>
                        <input name="due" type="checkbox">Coordinamento persone<br>
                        <input name="tre" type="checkbox">Progettazione<br>
                        <input name="quattro" type="checkbox">Redazione/analisi bilanci<br>
                        <input name="cinque" type="checkbox">Competenze giuridiche / legali
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr></td>               
                </tr>
                <tr>
                    <td align="right">
                        CAPACITÀ E COMPETENZE<br>ARTISTICHE
                    </td>
                    <td>
                        <input name="uno" type="checkbox">Musica<br>
                        <input name="due" type="checkbox">Scrittura<br>
                        <input name="tre" type="checkbox">Disegno<br>
                        <input name="quattro" type="checkbox">Pittura<br>
                        <input name="cinque" type="checkbox">Scultura
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr>
                    </td>
                </tr>
            </tbody></table>
        </form>
    





</body>