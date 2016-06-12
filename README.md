# Light Predator

--> logo goes here <--

**Light Predator** project from passap Team.

passap è l'acronimo per "**passatempo applicato**" 

### Membri del Team

1. [Wilfried Mbouenda Mbogne](https://github.com/WillyShakes) - Architecture, Android guru, Marketing
1. [Gianluca Randazzo](https://github.com/fusilicode) - Iot, Server, Ruby, php
1. [Vincenzo Tartaglia](https://github.com/vincenzot) - Designer, Developer
1. [Jacopo Diamanti](https://github.com/?) - Iot, Hardware trainer and developer, python, c, Marketing
1. Ettore Murfuni - Docente di Fisica, Hardware developer, c++

### Idea

L'idea nasce per risolvere il problema dell'inquinamento luminoso e i lampioni pubblici che non sono a norma.
Con i panelli solari flessibili LSC, creiamo dei cappelli per coprire i lampioni e usare quindi la luce in eccesso per creare energia.
Questa energia sarà usata dai sensori di CO2, o altri dati di inquinamento presenti sui cappelli che manderanno i dati ad un cloud per monitorare il livello di CO2 nella  città.

Use Cases:

1. In città, monitoraggio di parametri di inquinamento della citta a costo contenuto.

2. In casa, creare un sistema Iot dove i sensori di temperatura e umidità saranno installati sui cappelli fotovoltaici LSC,

### The architecture

* IBM bluemix con Watson broker per il servizio Cloud
  * Plan B: herokuapp
* Cloud: Applicazione Ruby on rails
* Applicazione android client per avere i dati in tempo reale e per installare i lampioni (posizione GPS viene mandata la server)
* Sensori di umidita, temperatura, CO2
* Schede ATtiny85 + ESP8266

### Passapp Breakdown Structure

* Project Setup

  - [X] Creare bluemix project - http://pasapp.mybluemix.net/
    - [X] Creare herokuapp project - http://pasapp.herokuapp.com/ 
  - [X] Documentare i membri del Team, competenze
  - [ ] Scrivere e accettare un piano di task
  - [X] Creare chat room - See http://pasapp.slack.com

* Sviluppo architettura

  - [X] Identify two use-cases

* Infrastruttura

  - [X] Setup Devops Service (CD) 

* passap Ruby Application 
  - [ ] Design and develop App
    - [X] Servizio API con JSON - http://pasapp.herokuapp.com/api/sensors_data
    - [X] Google Maps con marker
     - [ ] InfoWindow onclick Event
* passap Android Application 
  - [ ] Design and develop App
    - [X] App with webview and Cloud
    - [ ] App with API and data visualisation
     

* Rendering del prodotto

  - [X] Lampione non in regola
  - [X] Lampione con cappello solare

* Prepare il pitch
  - [ ] Prepare pitch 
  - [ ] Slide deck for the Hackathon 

* Assemblare i pezzi della demo finale dell'Hackathon

  - [ ] Prepare demo storyboard 
  - [ ] Lanciare le schede
  - [ ] Metere LSC nella lampada
  - [ ] Controllare i dati del Cloud

* [ ] Pitch at the end of the hackaton

* [ ] ...

* [ ] Whatsapp compra LightPredator e passa passa alla storia!

### Sites

* Website: 



#### The hardware for Hackaton PoC demo

* [ATtiny85](www.atmel.com/devices/attiny85.aspx)
* [ESP8266](https://en.wikipedia.org/wiki/ESP8266)


A big thanks to the sponsors:

* [ROME Maker Faire](www.makerfairerome.eu/en/)
* [eni](https://www.eni.com)
* [codemotion](www.codemotionworld.com)
* [POLIHUB](www.polihub.it)

### Copyright and Licensing

Copyright (C) 2016, [pasapp](https://github.com/fusillicode/pasapp).

wtf-doc is licensed under The MIT License (MIT).
See [LICENSE](https://github.com/fusillicode/pasapp/blob/master/LICENSE) for the full
license text.

<!-- EOF -->
