## BASH: ESERCIZIO 1
Creare uno script bash che richiede due numeri ed esegue la loro: *somma, sottrazione, moltiplicazione e divisione (quoziente e resto)*, stampando poi i risultati ottenuti.

## BASH: ESERCIZIO 2
Scrivere uno script bash che richiede il proprio nome utente e lo confronta con il valore della variabile d’ambiente ```LOGNAME```. Se i due valori sono uguali stampa un messaggio di benvenuto, altrimenti stampa un messaggio di errore.

## BASH: ESERCIZIO 3
Scrivere uno script bash che richiede un numero compreso tra 1 e 10. Se il numero inserito è corretto viene stampato il suo doppio, altrimenti viene visualizzato un messaggio di errore.

## BASH: ESERCIZIO 4
Scrivere uno script bash che:
- Controlla l’esistenza di una directory “```backup```”, se non esiste la crea.
- Richiede un nome di file all’utente.
- Se il file esiste ne crea una copia in backup aggiungendo l’estensione ```.bak```, altrimenti visualizza un messaggio di errore.

## BASH: ESERCIZIO 5
Scrivere uno script bash analogo all’esercizio 1 (operazioni su numeri) tranne che i due valori vengono passati come parametri dello script.

## BASH: ESERCIZIO 6
Scrivere uno script bash che richiede di digitare un valore compreso tra 1 e 10 ed utilizza il comando case per stampare un messaggio in base al valore digitato (es. “```Il valore di x è...```”.). In particolare, se il valore non appartiene all’intervallo richiesto viene stampato un messaggio di errore.

## BASH: ESERCIZIO 7
Scrivere uno script bash che crea una directory, e crea all’interno di essa 5 file il cui nome è ```file_x```, dove x è un valore progressivo.

## BASH: ESERCIZIO 8
Scrivere uno script bash che elenca tutti i file contenuti nella directory corrente.
Scrivere uno script bash che sposta i file passati come argomento su una directory old all’interno della vostra home. 
- Verifica che almeno un argomento sia stato fornito, altrimenti stampare un messaggio di errore.
- Il comando exit n, dove n è numero, può essere usato per uscire dallo script (es. exit 1).
- Un valore n diverso da zero indica uscita anomala.
- Se la directory old non esiste, la crea.
- Usare la variabile d’ambiente ```$HOME``` per recurera la vostra home directory.
- Stampa un messaggio prima di effettuare lo spostamento, contenente la lista dei file che verranno spostati.
- Sposta i file specificati nella directory old.

## BASH: ESERCIZIO 10
Scrivere uno script bash che crea una directory, richiede un numero n all’utente, e crea all’interno della directory creata n file il cui nome è ```file_x```, dove x è un valore progressivo.

## BASH: ESERCIZIO 11
Modificare lo script dell’esercizio 10 per utilizzare un ciclo while al posto del ciclo ```bash for```.

---
## ULTERIORI ESERCIZI
---

1. Realizzare uno script che permetta di uccidere un numero arbitrario di processi. I nomi dei processi da uccidere vengono passati come parametri della linea di comando dello script
La linea di comando dovrà essere:
```bash
zap <processo_1>...<processo_N>
```

2. Realizzare uno script che permetta di compattare con il comando tar un insieme di file passati come parametri alla linea di comando. Una volta compattati, i file dovranno essere spostati nella cartella backup all'interno della cartella corrente. Se backup non esiste deve essere creata.
La linea di comando dovrà essere:
```bash
archive <file_1> ... <file_N>
```
3. Realizzare uno script che permetta di identificare quali tra gli utenti indicati nella linea di comando sono attualmente logati e quali no, Lo script deve indicare data e ora dell'ultimo login per gli utenti non logati, data e ora di login per gli utenti logati.
La linea di comando dovrà essere
```bash
watchfor <user_1>...<user_N>
```
4. Realizzare uno script che permetta di recuperare login, nome e tipo di shell per ogni utente elencato nella linea di comando dello script. Se l'utente non esiste deve essere stampato un messaggio di avviso.
La linea di comando dovrà essere:
```bash
whichshell <name_1>...<name_N>
```
5. Realizzare uno script che crei un menu a video dal quale sia possibile selezionare l'esecuzione delle stesse operazioni effettuate negli esercizi precedenti. In questo caso, tutti i parametri che venivano passati come linea di comando dovranno essere letti in modo interattivo con il comando read. Inoltre, inserire le operazioni relative a ogni voce del menu in una funzione separata che dovr‡ essere richiamata all'iterno del case per la gestione del menu.
La linea di comando dovrà essere:
```bash
menu
```
