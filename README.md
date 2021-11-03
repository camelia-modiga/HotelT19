# HotelT19

## Documentul specificațiilor cerințelor software 


1. **Introducere** 
      1. **Scopul**\
      Acest SRS are ca scop descrierea funcționalității aplicației pentru gestionarea unui hotel și a personalului acestuia. Funcționalitatea aplicației constă în afișarea, inserarea și ștergerea datelor în funcție de drepturile angajatului care se loghează
      2. **Motivul**\
      Motivul din spatele proiectului este de a crea o aplicație care ușurează munca personalului unui hotel. Astfel angajatul se conectează cu numele de utilizator și parola specifică postului său și poate accesa cu ușurință date referitoare la persoanele cazate, ceilalți angajați sau starea camerelor (ocupate sau rezervate). 
      3. **Definiții, acronime și abrevieri**\
       Șablonul Singleton implică existența unei singure clase care este responsabilă cu crearea unui obiect în timp ce se asigură că doar un singur obiect este creat (doar o singură instanță a clasei poate exista).  \
       Şablonul Proxy asigură un înlocuitor pentru alt obiect pentru a controla accesul la acesta.
      4. **Referinte**
            1. [https://www.youtube.com/watch?v=ga8q90XFqDk&t=167s&ab_channel=ChituOkoliChituOkoli](https://www.youtube.com/watch?v=ga8q90XFqDk&t=167s&ab_channel=ChituOkoliChituOkoli)
            2. [https://krazytech.com/projects/sample-software-requirements-specificationsrs-report-airline-database](https://krazytech.com/projects/sample-software-requirements-specificationsrs-report-airline-database)
            3. Ingineria programării - Laborator 8 (Șablonul Singleton)
            4. Ingineria programării - Laborator 9 (Şablonul Proxy)
      5. **Prezentare generală**\
        Secțiunea 2 prezintă mai în profunzime cerințele acestei aplicații. Aceastăsecțiune este destinată clientului sau persoanelor care nu au o pregătire tehnică în acest domeniu.\ 
        Secțiunea 3 va conține toate cerințele tehnice ale aplicației incluzând o listă de cerințe funcționale și non-funcționale. Această secțiune este destinată dezvoltatorilor de software pentru a putea crea acest program.

2. **Descriere**\
      Acest proiect reprezintă o aplicație pentru gestionarea unui hotel și a personalului acestuia. Aplicația constă în evidența rapidă și ușoară a rezervărilor.Funcționalitatea aplicației constă în afișarea, inserarea și ștergerea datelor în funcție de drepturile angajatului care se loghează. Pentru stocarea informațiilor privind persoanele cazate, tarifele camerelor, clasificarea camerelor, tarifele serviciilor auxiliare (internet, parcare, telefon), conținutul minibarului, starea camerelor (ocupate sau rezervate) s-a folosit o baza de date. 
      1. **Perspectiva aplicației**\
            Proiectul oferă utilizatorului o variantă simplă de a accesa informațiile referitoare la rezervările unor camere de hotel stocate într-o bază de date.Nu este singurul și nici primul produs de acest gen de pe piață dar poate aduce un aspect nou și mai simplu de utilizat.
      2. **Funcțiile aplicației**\
         Aplicația dă posibilitatea următoarelor acțiuni realizabile de către personalul hotelului în funcție de angajatul care se conectează:
            1. Dacă angajatul se conectează cu numele de utilizator admin el va avea rolul de administrator și va putea vizualiza situația camerelor, fie ele ocupate sau rezervate, va putea adăuga noi camere care pot fi ulterior închiriate, va putea adăuga noi angajați, el fiind responsabil cu gestionarea întregului personal. De asemenea el poate șterge camere și angajați din baza de date. 
            2. Dacă angajatul se conectează cu numele de utilizator rec el va avea rolul de recepționer și va putea putea vizualiza situația camerelor, fie ele ocupate sau rezervate, va putea crea o nouă rezervare pentru client. De asemenea va putea șterge și vizualiza rezervări.
            3.  Dacă angajatul se conectează cu numele de utilizator cam el va avea rolul de camerist și va putea vizualiza situația camerelor, fie ele ocupate sau rezervate pentru a cunoaște momentul în care trebuie să actualizeze conținutul minibarului din camera respectivă. 
      3. **Caracteristicile utilizatorului**\
      Aplicația poate fi utilizată de oricine în orice domeniu fără a fi nevoie de o pregătire tehnică anticipată. Aplicația vizează persoanele din domeniul hotelier care vor utiliza aplicația pentru a gestiona rezervarea camerelor.
 3. **Cerințe specifice**
      1. **Cerințe externe**
            1. **Interfața cu utilizatorul**
                 * Front-end software: Windows Forms App (.NET Framework)
                 * Back-end software: C#, Oracle
            2. **Componente hardware**
                  * Windows
            3. **Componente software**\
                     Drept sistem de operare am folosit Windows datorită utilizării sale în masă și a ușurinței în utilizare. Drept mediu de dezvoltare am folosit Microsoft Visual Studio 2019 Community utilizând în crearea aplicației limbajul C#.<br />
                     Interfața cu utilizatorul este realizată cu Windows Forms App (.NET Framework) iar conectarea cu baza de date s-a realizat cu Oracle Database 11gR2 Express Editions for Windows x32.
      2. **Cerințe de performanță**\
      Fiind o aplicație simplă, ea poate fi rulată pe o platformă care nu necesită o performanță ridicată. Astfel avem nevoie de un procesor de 1,8 GHz, 58 MB memorie RAM și spațiu liber de 300 KB.
      3. **Constrângeri de design**\
      Pentru că interfața a fost realizată cu Windows Forms App (.NET Framework) aceasta este una simplistă dar care conține suficiente detalii astfel încât poate să ofere utilizatorului acces la toate operațiile de care are nevoie.
      
 ## Diagrame UML
 
 ### Diagrama de cazuri de utilizare
 ### Diagrama de clase
 ### Diagrama de activități
 ### Diagrama de secvențe pentru utilizator
 ### Diagrama de secvențe pentru administrator 
 ### Diagrama de secvențe pentru recepționeră
 ### Diagrama de secvențe pentru cameristă
 
 ### Modelul logic
 ### Modelul relațional 
 
 ## Modul de utilizare a programului
 Aplicația își propune să ușureze munca angajaților unui hotel. Astfel totul va fi stocat în format electronic fără a exista posibilitatea de a încurca datele referitoare la rezervări, la camere sau la personalul hotelului.
 ### Pagina Acasă
 
 Când utilizatorul lansează în execuție aplicația acesta este direcționat pe pagina de Acasă unde are posibilitatea de a se conecta cu numele de utilizator și parola specifică postului pe care îl ocupă. Dacă nu se introduce un nume de utilizator sau o parolă validă acesta nu se va putea conecta și i se va cere să introducă un username sau o parolă corectă. Din pagina de Acasă utilizatorul poate vizualiza informații referitoare la funcționarea programului prin apăsarea butonului Ajutor care va deschide fișierul help asociat proiectului. Prin apăsarea butonului Contact se va deschide un Message Box care conține datele de contact ale hotelului iar prin apăsarea butonului Despre se va deschide un Message Box care conține informații referitoare la creatorii aplicației.
 
 ### Pagina Administrator
 Dacă se realizează conectarea cu username-ul admin vom fi direcționați către o nouă pagină la care are acces doar administratorul hotelului. El poate vizualiza situația camerelor, fie ele ocupate sau rezervate, poate gestiona situația camerelor adică poate adăuga noi camere care vor putea fi închiriate sau poate șterge camerele dacă nu dorește să le ofere spre închiriere. Administratorul se ocupă si cu gestionarea personalului hotelului. El poate adăuga noi angajați sau îi poate șterge pe cei vechi. 
 
 ### Pagina Recepționeră
 Dacă se realizează conectarea cu username-ul rec vom fi direcționați către pagina la care are acces recepționera hotelului. Funcția principală a recepționerei este de a rezerva camere. Ea poate vedea situația camerelor înainte de a realiza rezervarea pentru a ști ce camere sunt disponibile și ce camere sunt deja rezervate. De asemenea, recepționera poate șterge rezervarea după ce se decazează clientul.
 
 ### Pagina Cameristă
 Dacă utilizatorul se conectează cu username-ul cam el va avea rolul de cameristă și va putea vedea ce camere sunt ocupate și ce camere sunt disponibile pentru a ști în ce camere trebuie sa facă curat. După ce o cameră se eliberează, camerista actualizează conținutul minibarului și se asigură de faptul că totul este pregătit pentru a primi noi oaspeți în camera respectivă.
