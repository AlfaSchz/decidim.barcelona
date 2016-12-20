
> Versión semi-definitiva en catalán y castellano del informe para últimos comentarios. Si al leerlo encontráis alguna falta no dudéis en corregir.

=============

## RECOMANACIONS RESPECTE A LES VULNERABILITATS SOCI-TÈCNIQUES DE L'EINA "DECIDIM.BARCELONA"

per Xnet [https://xnet-x.net](https://xnet-x.net/) 


S'han analitzat els principals problemes de vulnerabilitat soci-tècniques, més enllà de la mera seguretat informàtica, de la plataforma de participació política Decidim.Barcelona. El present informe formula una sèrie de recomanacions. 

Per a la redacció d'aquest informe s'han explorat les funcionalitats de la plataforma fins al 8 de novembre de 2016, prestant especial atenció en com ha estat habitada pels usuaris, en la interacció entre ells i la interacció entre usuaris i administradors. Es presenten recomanacions per a la millora de l'eina plantejades per a la consecució més eficient dels objectius d'aquesta. Aquestes recomanacions tenen com a finalitat millorar la robustesa del procés per aconseguir que l'eina sigui menys vulnerable a males pràctiques i manipulacions, millorar el conjunt de l'experiència i, sobretot, millorar els resultats de participació política ciutadana. 



Les competències d'Xnet en aquest àmbit deriven de les seves investigacions i experiències com a laboratori de l'ús d'Internet per a millora de la democràcia del segle XXI, centrades en la desintermediació que aquesta eina exerceix en diferents àrees i, concretament en aquest cas, en la desintermediació entre la societat civil i els seus representants. Partint de l'ús d'Internet per a les noves formes de participació ciutadana, la comparació d'experiències anteriors i la contribució a plataformes col·laboratives, ha elaborat una metodologia pròpia [1] que desemboca, el 2013-14, en l'impuls i coordinació d'un dels prototips pioners en l'ús de participació política ciutadana: la Xarxa Ciutadana Partit X. Aquest projecte, eminentment metodològic, proposa l'ampliació de les bases del consens i la millora de l'eficiència en participació en el centre dels seus objectius. 

<br />

### RESUM DEL CONTINGUT DE L'INFORME

El procés participatiu de Decidim.Barcelona ha suposat un gran pas endavant no només respecte a tot allò que des del govern de la ciutat s'havia promogut anteriorment, sinó també en comparació amb eines de participació similars en altres ciutats i països. Tècnicament, Decidim.Barcelona suposa un gran avenç tecnopolític que per fi aprofita la capacitat de les eines digitals i d'una societat connectada, i suposa una gran actualització per a la ciutat. 

Excepte algunes recomanacions d'índole tècnica, la majoria de les millores recomanades són de caràcter metodològic i d'usabilitat o enfocades a desplegar-ne més profitosament el potencial. 

<br />

### QUINS AVENÇOS HA SUPOSAT DECIDIM.BARCELONA

Entre els aspectes més positius o nous de l'eina volem remarcar: 


- L'elecció de l'eina de codi obert Consul [https://github.com/consul/consul](https://github.com/consul/consul) - robusta per al procés, desenvolupada, testada i millorada per la comunitat de programari lliure.

- Publicació en codi obert a GitHub de les característiques i funcionalitats desenvolupades per Decidim.Barcelona sobre el codi de Consul i que podran ser aprofitades per la comunitat. L'elecció del programari lliure i del codi obert permet una completa transparència i accessibilitat fins i tot en la mateixa estructura de la plataforma i permet a qualsevol persona poder millorar-la o utilitzar-la, constituint un retorn del 100% dels recursos públics a la ciutadania.

- Participació descentralitzada i simultaneïtat. La participació en línia permet a la ciutadania participar des de l'ordinador de casa o des del seu telèfon mòbil i en qualsevol moment, en lloc d'haver d'acudir a determinats punts físics i en horaris concrets, la qual cosa facilita i promou la participació i vigilància del procés.

- Complementació entre les vies de participació digital i analògica, aprofitant l'eina per a la seva sinergia. Això permet abastar integralment tots els tipus de participació.

- Possibilitat de participació anònima que permet, a més d'exercir un dret civil bàsic a Internet, altres externalitats com la possibilitat de testar propostes legals i polítiques públiques sense biaixos com "l'argument d'autoritat" o "l'argument *ad hominen*". La participació en línia facilita la diversitat d'opinions respecte a un debat analògic en el qual la presència de l'autoritat pot coartar pensaments oposats a l'Ajuntament. Això és especialment vàlid pel fet que els comentaris i les propostes poden realitzar-se de manera no-verificada (és a dir. sense que l'usuari hagi de verificar el compte amb les dades del padró), la qual cosa facilita la llibertat de crítica.

- Sistema integrat de verificació amb el padró per poder votar. Aquesta condició és una de les que contribueixen a prevenir comportaments d'*astroturfing*, *Spam* o lobby deshonest.

- Presentació aleatòria per defecte de les propostes que permet que siguin valorades també propostes més innovadores i inusuals, així com també posar al mateix nivell les propostes de les persones, de les organitzacions i de l'Ajuntament.

- Reconeixement de l'autoria de les propostes durant tot el procés i en el resultat final. Això aporta apoderament a la ciutadania que es veu reconeguda. A més, permet la traçabilitat perquè les propostes puguin generar d’altres i variats projectes fora o dins de les vies institucionals.

- Traçabilitat de les propostes, la seva avaluació i el seu retorn. Un recorregut clar i transparent de les fases per les quals passen les diferents aportacions ciutadanes que permet traçar la seva evolució i descartar la possibilitat que hi hagi hagut intervencions opaques o confuses per part dels administradors de l'eina o l'Ajuntament.

- La traçabilitat compta a més amb un sistema de seguiment de propostes mitjançant notificacions per correu electrònic que facilita la vigilància ciutadana del procés.

- Una clara estructura de fases que canalitza i facilita la participació.

<br />

### RECOMANACIONS PER A LA MILLORA DE L'EINA 

La idea de 'participació' s'ha posat de moda gràcies a l'esforç de la ciutadania per reclamar la seva centralitat en els processos polítics. A causa d'aquest èxit, el concepte de 'participació' ha patit també un desgast degut a la proliferació de pràctiques i eines en què la interacció del ciutadà és simplista i acotada i el seu poder decisori efectiu és gairebé nul. 

Des d'Xnet defensem que la participació política ciutadana ha de ser programàtica i no una simulació que distreu el ciutadà de la possibilitat real d'intervenir en el desenvolupament de polítiques. L'aspiració ha de ser la del redactat i disseny col·laboratiu i corresponsable de les legislacions i polítiques públiques que regeixen la gestió dels béns i espais comuns. En resum, la cogovernança de la ciutat. Per tot això, la intervenció ciutadana no s'ha de limitar únicament en els continguts genèrics, sinó també en els detalls dels redactats legislatius. 

Entenem que Decidim.Barcelona comparteix aquest objectiu i, com apunta el seu nom, busca permetre que la ciutadania *decideixi*. Des d'aquesta perspectiva, els punts per a la millora del resultat funcional de Decidim.Barcelona que recomanaríem estudiar es donen principalment en dos àmbits: 

​1) El contingut, és a dir, el punt de partida i l'objectiu de cada procés.

​2) La funcionalitat i la tasca de moderació de cada procés. 


<br />

### 1) Recomanacions sobre el contingut dels processos participatius: punt de partida -> concreció de l'objectiu

És important parar atenció i recollir els desitjos i aspiracions de la ciutadania i canalitzar-los l'objectiu final de la seva resolució pràctica. Cal posar esforç i recursos a aconseguir que el resultat final del procés siguin textos legals programàtics o dissenys de polítiques públiques. Intentar esquivar aquesta complexitat amb la finalitat de millorar la usabilitat i accés a l'eina comporta el perill que el resultat acabi sent en una mera declaració d'intencions, sense el suficient desenvolupament perquè sigui realment programàtic. 

Per aconseguir un procés el resultat del qual siguin textos concrets i programàtics, que puguin arribar a ser legalment vinculants, recomanem: 



**Evitar partir de zero: com realitzar el document que dóna inici al procés** 

És desitjable que la participació parteixi d'una realitat concreta ja existent i inclogui a totes les parts que considerem que puguin contribuir a un procés robust, que ampliï les àrees de consens i negociació des del primer moment. Algunes fonts des de les quals és inevitable partir en el començament del procés participatiu són: 



1 - *Programes electorals*:

La ciutadania ja ha expressat una part de les seves preferències a través del vot a sengles partits durant les eleccions. En alguns casos, a més, els programes dels partits ja van passar un procés de participació ciutadana. Perquè aquest treball ciutadà no s'hagi fet en va i per trencar amb la lògica de la democràcia representativa segrestada per la política de partits, és fonamental que els processos de participació incloguin els programes electorals dels partits de govern per fer que els partits els defensin des d'una perspectiva pràctica concreta. 

2 - *Documents programàtics de la societat civil*:

El mapatge previ dels documents ja generats per entitats i agents actius de la societat civil que ja estan treballant en els diferents eixos temàtics i que representen l'imaginari més avançat en cada àmbit. 

3 - *La legislació vigent*:

És inevitablement el punt de partida, ja que el resultat del procés participatiu aspira a acabar desembocant en una transformació d'aquesta. Cal recollir la legislació relativa als àmbits desenvolupats i bolcar-la en el procés participatiu en un llenguatge quotidià. 



*CONDITIO SINE QUA NON*: Entenem que la coresponsabilitat en el procés participatiu no implica que els ciutadans coneguin o investiguin tots els punts anteriors. És responsabilitat de l'Ajuntament, que disposa de recursos necessaris, recopilar i unificar aquestes informacions i posar-les a disposició de la ciutadania en format d'un únic document en el qual es puguin rastrejar totes les fonts. Aquest document únic seria el punt de partida del procés. A més, el document hauria d'aprofundir amb més claredat en la definició de 1) el marc, àmbit i abast del procés participatiu; 2) les competències i viabilitat tècnica i pressupostària; 3) l'objectiu concret que es vol assolir. 


Des d'una perspectiva tècnica i d'interfície, si es partís d'un únic document es pal·liaria el problema de qualitat de les aportacions causa de la brevetat de l'espai que tenen habilitat (350 caràcters). Entenem que aquesta limitació és deguda a la necessitat que no es col·lapsi l'eina amb excessos. Amb la presència d'un únic document ja articulat canvia el tipus d'intervenció requerida a la ciutadania. Aquest format atendria principalment a esmenes en què els 350 caràcters podrien ser suficients. 


<br />
### ​2) Moderació 

Més enllà de tota millora tècnica de l'eina, el principal instrument per aconseguir un procés robust amb un resultat final sòlid és una moderació efectiva. Aquesta moderació no pot ser a posteriori, ha de ser contínua, acompanyant tot el procés. Cal que es dediquin recursos a aconseguir una moderació des de la competència i a temps real que descarti aviat i de manera justificada les aportacions inviables -fora de competència, malicioses, etc. La moderació ha d'estar enfocada a dirigir el debat cap al màxim aprofitament de l'expertesa de la societat civil, de manera que el procés participatiu es construeixi sempre en positiu, en lloc de ser dispers i malgastar energia i recursos de la ciutadania i l'Ajuntament. 

El fet de començar des de documents inicials més elaborats i acotats i de dur a terme una moderació d'acompanyament més estricta, posa una mica més alt el llindar d'esforç per a la participació ciutadana. Tot i això, pensem que és més desitjable una participació responsable i meditada (alhora que oberta i transparent perquè qualsevol ciutadà, que no té per què ser expert en tot, pugui vigilar en tot moment), que produeixi resultats concrets i aplicables, a la recerca d'una participació principalment quantitativa que finalment no dóna resultats aplicables en la pràctica i que consumeix l'esforç ciutadà en va. Per tot això considerem que els criteris de la valoració de legitimitat dels resultats del procés haurien de ser de dues índoles: qualitatius pel que fa als continguts de les aportacions; i quantitatius només pel que fa a la vigilància ciutadana sobre el procés, és a dir, en els accessos a l'eina i la participació en el vot. D'aquesta manera es pot construir realment un procés de coresponsabilitat i d'alta qualitat alhora. 


* **Canals**. A nivell d'interfície s'hauria d'habilitar una via perquè les propostes inviables - per irrealitzables, fora de les competències o fora dels objectius - es puguin desar a la vista com a descartades, però no contaminin la visualització de la resta. És important tenir un registre d'aquest tipus de propostes inviables i justificar-les degudament com a tal, tant per una raó de transparència del procés com per evitar que ressorgeixin un cop i un altre (veure *evitar duplicitats* més endavant). Més encara, les intervencions fora dels objectius, però d'interès per a la millora de la ciutat, podrien encarrilar directament per part dels moderadors a altres eines ja habilitades per l'Ajuntament, com, per exemple, IRIS. Això permetria aprofitar amb més eficiència l'esforç ciutadà. 

* **Política**. Considerem que la moderació per part de l'equip de l'Ajuntament no pot ser neutral, ja que el govern ha estat votat per la ciutadania en base a un programa i unes directrius polítiques en contraposició a d’altres. És inevitable i necessari que el disseny programàtic reflecteixi aquestes directrius. Aquestes són les directrius sobre les quals s'ha de basar la moderació. Tot i que la política de l'Ajuntament tingui una direcció clara per la qual ha estat votat i elegit, ha de governar per a tota la ciutat, per la qual cosa ha d'incloure al màxim la diversitat d'opinions. El treball sobre la participació consisteix també a integrar amb el màxim d'acceptació possible els nous matisos.

  Per tot això, els moderadors, designats per part dels departaments amb competències sobre els continguts dels diversos processos, haurien de poder acompanyar les intervencions de la ciutadania, canalitzant-la i aprofundint en els arguments a temps real, sabent en tot moment com resoldre matisos i obtenir conclusions concretes i detallades. 


  *La neutralitat no hauria de manifestar-se en la moderació, que representa les directrius governamentals. No obstant això, la neutralitat sí que pot manifestar-se més en altres aspectes: per exemple en l'estètica del web, que en aquest moment és molt connotada.* 



* **A temps real**. La presència de la moderació ha d'acompanyar de manera constant els temps de participació. La moderació immediata o fins i tot prèvia (posant recursos per evitar un coll d'ampolla i, per descomptat, sense censura injustificada) preveu la progressió de propostes irrealitzables o fora de les competències de l'Ajuntament que, si no són redireccionades des del principi, contaminaran i perjudicaran la robustesa del procés. 



* **Des de la competència**. A les temàtiques en les quals l'Ajuntament té competències sempre s'ha de respondre des de la competència (podent indicar que pot trigar més la resposta d'una moderació completa), tenint disponible personal dels departaments competents per la tasca. S'evita, així, el vot massiu de propostes molt ben sonants però sense fonament o irrealitzables i poden recanalitzar-les des de la competència cap a un objectiu realista o descartar-se. 

  *Ex*: [*https://decidim.barcelona/pam/4/proposals/piscinas-municipales-libres-de-cloro*](https://decidim.barcelona/pam/4/proposals/piscinas-municipales-libres-de-cloro) 



* **Guia per a la participació i la moderació**. Recomanem la publicació d'una guia detallada i justificada sobre quina actuació concreta es demana a la ciutadania i amb quin format i de quina manera es duen a terme els processos de moderació. Aquesta guia pot estar situada en els aspectes generals d'ús de l'eina o fins i tot en una secció a part i s'hauria de recomanar-ne la lectura als usuaris. És important fomentar una participació estructurada i una moderació que tingui entre els seus objectius el fer d’aconseguir-la. 

<br />

### ALGUNES RECOMANACIONS TÈCNIQUES PER A LA PREVENCIÓ D'ABUSOS DE L'EINA

Fins ara no hem detectat cap abús o pràctica deshonesta ressenyades a l'eina Decidim.Barcelona per part dels usuaris. Entenem que això ha estat majorment per la qualitat de l'eina i per la seva bona gestió, però també pel fet que els resultats no són per ara clarament vinculants. En aquest cas, les possibilitats que hi hagi intents de manipulació de l'eina augmentaran previsiblement. 

El **vot amb verificació prèvia** ja suposa ara mateix una excel·lent mesura tècnica de prevenció d'abusos de tipus *spam*, *astroturfing* o similars. L'eina permet també, d'altra banda, altres funcionalitats com l'aportació i el comentari per part d'usuaris que no estan verificats. Evidentment, lloem aquesta decisió que permet la participació en Decidim.Barcelona de manera anònima en nom de la privacitat i també la participació de ciutadans que no estan empadronats a Barcelona però poden així aportar els seus coneixements al procés. No obstant això, aquesta participació sense verificar pot ser més susceptible a abusos d'*spam* i propaganda a l'eina i per això deixem algunes recomanacions tècniques per a la prevenció en aquest sentit: 



* **Evitar duplicitats**. Tot i que la mateixa eina *Consul* ja compta amb un sistema de reagrupació de propostes a posteriori, recomanem investigar la implementació d'una funcionalitat tècnica prèvia que mostri al ciutadà, en el moment de fer la seva aportació, propostes similars a la seva. El ciutadà pot veure si, efectivament, una proposta com la seva ja ha estat recollida anteriorment i decidir donar suport a aquesta, i fins i tot aportar si creu que pot millorar-la, en lloc de duplicar-la, disminuint la dispersió i millorant l'efectivitat del procés. 

  *Ex:* [*https://decidim.barcelona/pam/4/proposals?search=tramvia%20diagonal&order=confidence_score*](https://decidim.barcelona/pam/4/proposals?search=tramvia%20diagonal&order=confidence_score) 

  *Un exemple d'implementació pràctica d'aquest tipus de funcionalitat per prevenir duplicats es pot trobar a l'agregador [***meneame.net***](https://www.meneame.net/) , de codi obert.* 


  Aquest tipus de tecnologia de recerca d'aportacions similars mitjançant anàlisi semàntica o per paraules clau pot usar-se també com a eina perquè els moderadors identifiquin fàcilment i previnguin atacs de propaganda, *spam* i *astroturfing*. 

  És molt important prendre les precaucions necessàries per prevenir que l'aplicació de mesures tècniques automàtiques d'aquest tipus danyin la llibertat d'expressió i siguin sinònim de censura. Algunes mesures a prendre: 

  - Que el procés de retirada de qualsevol contingut depengui sempre d'una revisió final i verificació per part d'un moderador humà. 

  - La transparència més gran possible en el codi dels algoritmes utilitzats i l’explicació d'aquests. Això mitigaria falses acusacions de censura. 

  - Implementació de processos d'apel·lació a la retirada de continguts. 

  Raonablement, cal permetre alguna flexibilitat sobre els dos primers punts anteriors, sempre per seguretat i en casos d’abús flagrant. Exemple: la publicació d'una mateixa aportació un cop i un altre de manera recursiva, com *spam*, des d'usuaris diferents però des d'una mateixa IP. Aquest tipus d'abús es minimitzaria en gran mesura si s'indica amb claredat des del principi del procés que les propostes similars o idèntiques seran o bé eliminades o bé reagrupades sistemàticament per la moderació automàtica. És absolutament justificat que les propostes no prenguin rellevància per la seva reiteració sinó només per la seva consistència. Naturalment totes les evidències del procés han de guardar-se i poder ser traçades per tenir proves fefaents davant de qualsevol reclamació. 


* **Discussió rellevant**. Recomanem encaridament estudiar la implementació d'un sistema de valoració de les aportacions i dels comentaris mitjançant l'algoritme de Wilson. Aquest sistema corregeix estadísticament vulnerabilitats en el càlcul de prioritzacions i votacions que poden ser abusades per al lobby deshonest i l'*spam* "*rescatant*" i valoritzant les aportacions rellevants respecte a d’altres de controvertides però que poden no tenir cap interès. 

  *Evan Miller explica la teoria matemàtica darrere de l'algoritme de Wilson aquí:*[http://www.evanmiller.org/how-not-to-sort-by-average-rating.html](http://www.evanmiller.org/how-not-to-sort-by-average-rating.html) 


* **Distinció per barri**. Les propostes que afecten únicament barri/s concret/s haurien de classificar-se així des del principi. D'aquesta manera la gent interessada del mateix barri pot trobar-les més fàcilment i hi té més poder decisori al damunt. Si es deixen dins de l'apartat general de propostes, les propostes d'un barri concret resulten més susceptibles de ser objectiu d'abusos de *astroturfing* i lobby deshonest ja que aquí la gent del barri tindria més *dificultat* a localitzar-los -mentre que l'autor de la proposta pot promocionar-la artificialment passant-la entre els seus contactes per enllaç directe. 

  *Ex:* [*https://decidim.barcelona/pam/4/proposals/un-local-definitiu-per-la-farinera-ateneu-del-clot*](https://decidim.barcelona/pam/4/proposals/un-local-definitiu-per-la-farinera-ateneu-del-clot) 


<br />
#### Altres aspectes per millorar

*Cites presencials*: El resultat de les cites presencials està en alguns casos molt ben detallat però en altres poc o gens. Els resultats que haurien d'aportar de manera indispensable en tots els casos són els punts decidits i les conclusions finals de la trobada. La confusió entre els continguts genèrics de la trobada i els objectius que ha assolit redueix l'efectivitat de les aportacions rebudes en les trobades presencials. A més d'això, i en nom de la transparència, recomanaríem també incloure un *streaming* en directe o vídeo de la trobada que quedi penjat a la plataforma, sempre preguntant si algun ciutadà prefereix mantenir el seu anonimat i prenent mesures si així fos (des de tancar el pla del *streaming* perquè gravi només els membres de l'Ajuntament, fins a no fer-ho en absolut si, per exemple, el tema és molt delicat i els assistents podrien tenir represàlies). 


<br />
### NOTES FINALS 

La coherència i la transparència dels algoritmes tècnics i de la moderació creen un entorn que combina de manera eficaç i realment democràtica la vigilància de la institució i de la ciutadania sobre el procés. Recalquem la importància d'aconseguir un procés robust i una moderació eficient i resolutiva i recomanem estudiar la implementació dels suggeriments tècnics i metodològics continguts en aquest informe com a mesura preventiva davant futurs abusos. 



=========================== 



*[1] Algunes referències:*



Free Culture Forum 2010 i Free Culture Forum 2011<br />[https://2010.fcforum.net/en/topics/](https://2010.fcforum.net/en/topics/)<br />[https://2012.fcforum.net/tematicas-y-programa-2012/](https://2012.fcforum.net/tematicas-y-programa-2012/) 


Descripció metodològica i alguns textos esmenats per la Xarxa Ciutadana Partit X<br />[https://partidox.org/elaboracion-programa-emergencias-concretas/](https://partidox.org/elaboracion-programa-emergencias-concretas/)<br />[http://comentarios.partidox.org/](http://comentarios.partidox.org/) 


Un exemple de correcció del 'Pla d'Emergències per sortir de la crisi' de la Xarxa Ciutadana Partit X<br />[http://comentarios.partidox.org/text/3XsGBg9HYhh/view/](http://comentarios.partidox.org/text/3XsGBg9HYhh/view/) 


Desenvolupament participatiu del 'Programa per a les eleccions Europees' Xarxa Ciutadana Partit X partint del consens dels textos ja prèviament elaborats<br />[http://eleccioneseuropeas.partidox.org/programa-europeo/#actuaeneuropa](http://eleccioneseuropeas.partidox.org/programa-europeo/#actuaeneuropa)<br />[http://comentarios.partidox.org/text/8wyakFD59aw/view/](http://comentarios.partidox.org/text/8wyakFD59aw/view/) 


=========================

-------------------------


## RECOMENDACIONES ENTORNO A LAS VULNERABILIDADES SOCIO-TÉCNICAS DE LA HERRAMIENTA "DECIDIM.BARCELONA"

*por Xnet* [*https://xnet-x.net*](https://xnet-x.net/)


Se han analizado los principales problemas de vulnerabilidad socio-técnicas, más allá de la mera seguridad informática, de la plataforma de participación política Decidim.Barcelona. El presente informe formula una serie de recomendaciones.

Para la redacción de este informe se han explorado las funcionalidades de la plataforma hasta el 8 de noviembre de 2016, prestando especial atención en cómo ha sido habitada por los usuarios, la interacción estos y la interacción entre usuarios y administradores. Se presentan recomendaciones para la mejora de la herramienta planteadas para la consecución más eficiente de los objetivos de la misma. Estas recomendaciones tienen como finalidad la mayor robustez del proceso para conseguir que la herramienta sea menos vulnerable a malas prácticas y manipulaciones, mejorar el conjunto de la experiencia y, sobre todo, mejorar los resultados de participación política ciudadana.

Las competencias de Xnet en este ámbito derivan de sus investigaciones y experiencias como laboratorio del uso de Internet para mejora de la democracia del siglo XXI, centradas en la desintermediación que esta herramienta ejerce en diferentes áreas y, concretamente en este caso, en la desintermediación entre la sociedad civil y sus representantes. Del uso de Internet en las nuevas formas de participación ciudadana, la comparación de experiencias anteriores y la contribución a plataformas colaborativas, ha elaborado una metodología propia  [1] que desemboca, en el 2013-14, en el impulso y coordinación de uno de los prototipos pioneros en el uso de participación política ciudadana: la Red Ciudadana Partido X. Este proyecto, eminentemente metodológico, propone la ampliación de las bases del consenso y la mejora de la eficiencia en participación en el centro de sus objetivos.



<br />
### RESUMEN DEL CONTENIDO DEL INFORME

El proceso participativo de Decidim.Barcelona ha supuesto un gran paso adelante no solo respecto lo que desde el gobierno de la ciudad se había promovido anteriormente, sino también en comparación con herramientas de participación similares en otras ciudades y países. Técnicamente Decidim.Barcelona supone un gran avance tecnopolítico que por fin aprovecha la capacidad de las herramientas digitales y de una sociedad conectada y supone una gran actualización para la ciudad.Salvo algunas recomendaciones de índole técnica, la mayoría de las mejoras recomendadas son de carácter metodológico y de usabilidad o enfocadas a desplegar más provechosamente su potencial.



<br />
### QUÉ AVANCES HA SUPUESTO DECIDIM.BARCELONA

Entre los aspectos más positivos o novedosos de la herramienta queremos remarcar:

- La elección de la herramienta de código abierto Consul  [https://github.com/consul/consul](https://github.com/consul/consul) - robusta para el proceso, desarrollada, testada y mejorada por la comunidad de software libre.

- Publicación en código abierto en GitHub de las características y funcionalidades desarrolladas por Decidim.Barcelona sobre el código de Consul que podrán ser aprovechadas por la comunidad. La elección del software libre y del código abierto permite una completa transparencia y accesibilidad incluso en la propia estructura de la plataforma y permite a cualquier persona poder mejorar o utilizar la misma, constituyendo un retorno del 100% de los recursos públicos a la ciudadanía.

- Participación descentralizada y simultaneidad. La participación online permite a la ciudadanía participar desde el ordenador de su casa o su teléfono móvil y en cualquier momento, en lugar de tener que acudir a unos determinados puntos físicos y en horarios concretos, lo cual facilita y promueve la participación y vigilancia del proceso.

- Complementación entre las vías de participación digital y analógica, aprovechando de la herramienta para su sinergia. Esto permite abarcar integralmente todos los tipos de participación.

- Posibilidad de participación anónima que permite, ademas de ejercer un derecho civil básico en Internet, otras externalidades como la posibilidad de testar propuestas legales y políticas públicas sin sesgos como el "argumento de autoridad" o el "argumento *ad hominen*". La participación en línea facilita la diversidad de opiniones respecto a un debate analógico en el que la presencia de la autoridad puede coartar pensamientos opuestos al Ayuntamiento. Esto es especialmente válido por el hecho de que los comentarios y las propuestas pueden realizarse de manera no-verificada (es decir sin que el usuario tenga que verificar la cuenta con los datos del padrón) lo que facilita la libertad de crítica.

- Sistema integrado de verificación con el padrón para poder votar. Esta condición es una de la que contribuye a prevenir comportamientos de *Astroturfing*, *Spam* o lobby deshonesto.

- Presentación por defecto aleatoria de las propuestas que permite que sean valorizadas también propuestas más innovadoras e inusuales, así como poner al mismo nivel las propuestas de las personas, las organizaciones y las del Ayuntamiento.

- Reconocimiento de la autoría de las propuestas a lo largo del proceso y en el resultado final. Esto aporta empoderamiento a la ciudadanía que se ve reconocida y participe. Además, permite la trazabilidad para que las propuestas puedan generar otros y variados proyectos fuera o dentro de los cauces institucionales.

- Trazabilidad de las propuestas, su evaluación y su retorno. Un recorrido claro y transparente de las fases por las que pasan las diferentes aportaciones ciudadanas que permite trazar su evolución y descartar la posibilidad de que haya habido intervenciones opacas o confusas por parte de los administradores de la herramienta y Ayuntamiento.

- La trazabilidad cuenta además con un sistema de seguimiento de propuestas mediante notificaciones por e-mail que facilitan la vigilancia ciudadana del proceso.

- Una clara estructura de fases que encauza y facilita la participación.



<br />
### RECOMENDACIONES PARA LA MEJORA DE LA HERRAMIENTA

La idea de 'participación' se ha puesto de moda gracias a los esfuerzo de la ciudadanía para reclamar su centralidad en los procesos políticos. A causa a este éxito, el concepto de 'participación' ha también sufrido un desgaste debido a la proliferación de prácticas y herramientas en los que la interacción del ciudadano es simplista y acotada y su poder decisorio efectivo es casi nulo.

Desde Xnet defendemos que la participación política ciudadana debe ser programática y no una simulación que distrae al ciudadano de la posibilidad real de intervenir en el desarrollo de políticas. La aspiración debe ser la del redactado y diseño colaborativo y corresponsable de las legislaciones y políticas públicas que rigen la gestión de los bienes y espacios comunes. En resumen la cogobernanza de la ciudad. Por todo esto, la intervención ciudadana no debe darse solo en los contenido genéricos, sino en los detalles de los redactados legislativos.

Entendemos que Decidim.Barcelona comparte este objetivo y, como apunta su nombre, busca permitir que la ciudadanía *decida*. Desde esta perspectiva, los puntos para la mejora del resultado funcional de Decidim.Barcelona que recomendaríamos estudiar pertenecen principalmente a dos ámbitos: 

​1) El contenido, es decir, el punto de partida y el objetivo de cada proceso.​

2) La funcionalidad y la tarea de moderación de cada proceso.



<br />
### 1) Recomendaciones sobre el contenido de los procesos participativos: punto de partida -> concreción del objetivo

Es importante prestar atención y recoger los deseos y aspiraciones de la ciudadanía y encauzarlos al objetivo final de su resolución práctica.Es necesario poner esfuerzo y recursos en conseguir que el resultado final del proceso sean textos legales programáticos o diseños de políticas públicas. Intentar esquivar esta complejidad en aras de mejorar la usabilidad y acceso a la herramienta, conlleva el peligro de que el resultado se quede en una mera declaración de intenciones, sin el suficiente desarrollo para que sea realmente programático.

Para conseguir un proceso cuyo resultado sean textos concretos y programáticos, que puedan llegar a ser legalmente vinculantes, sugerimos:



**Evitar partir de cero: cómo realizar el documento que da inicio al proceso**

Es deseable que la participación parta de una realidad concreta ya existente e incluya a todas las partes que consideramos que puedan contribuir en un proceso robusto, que amplíe las áreas de consenso y negociación desde el primer momento. Algunas fuentes desde las que es inevitable partir en el comienzo del proceso participativo son:

1 - *Programas electorales*:

La ciudadanía ya ha expresado una parte de sus preferencias a través del voto a sendos partidos durante las elecciones. En algunos casos, además, los programas de los partidos ya pasaron un proceso de participación ciudadana. Para que este trabajo ciudadano no se haya hecho en balde y para romper con la lógica de la democracia representativa secuestrada por la política de partidos, es fundamental que los procesos de participación incluyan los programas electorales de los partidos de gobierno para hacer que los partidos los defiendan desde una perspectiva práctica concreta.



2 - *Documentos programáticos de la sociedad civil*:

El mapeo previo de los documentos ya generados por entidades y agentes activos de la sociedad civil que ya están trabajando en los diferentes ejes temáticos y que representan lo más avanzado en cada ámbito.



3 - *La legislación vigente*:

Es inevitablemente el punto de partida, ya que el resultado del proceso participativo aspira a acabar desembocando en una transformación de la misma. Es necesario recoger la legislación relativa a los ámbitos desarrollados y volcarla en el proceso participativo en un lenguaje cotidiano.



*CONDITIO SINE QUA NON*: Entendemos que la corresponsabilidad en el proceso participativo no implica que los ciudadanos conozcan o investiguen todos los puntos anteriores. Es responsabilidad del Ayuntamiento, que dispone de recursos para ello, recopilar y unificar estas informaciones y ponerlas a disposición de la ciudadanía en el formato de un único documento en el que se puedan rastrear todas las fuentes. Este documento único sería el punto de partida del proceso. Además, el documento debería profundizar con más claridad em la definición de 1) el marco, ámbito y alcance del proceso participativo; 2) las competencias y viabilidad técnica y presupuestaria; 3) el objetivo concreto que se quiere alcanzar.



Desde una perspectiva técnica y de interfaz, si se partiese de un único documento se paliaría el problema de calidad de las aportaciones debido a la brevedad del espacio habilitado para ellas (350 caracteres). Entendemos que esta limitación es debida a la necesidad de que no se colapse la herramienta con excesos.Con la presencia de un único documento ya articulado, cambia el tipo de intervención requerida a la ciudadanía. Este formato atendería principalmente a enmiendas por lo que los 350 caracteres podrían ser suficientes.



<br />
### 2) Moderación

Más allá de toda mejora técnica de la herramienta, el principal instrumento para conseguir un proceso robusto con un resultado final sólido es un moderación efectiva. Esta moderación no puede ser a posteriori, debe ser continua, acompañando todo el proceso. Es necesario que se dediquen recursos a conseguir una moderación desde la competencia y en tiempo real que descarte de manera temprana y justificada las aportaciones inviables, fuera de competencia, maliciosas, etc. La moderación debe estar enfocada a dirigir el debate hacia el máximo aprovechamiento de la *expertise* de la sociedad civil, de manera que el proceso participativo se construya siempre en positivo, en lugar de ser disperso y malgastar energía y recursos de la ciudadanía y el Ayuntamiento.

El hecho de partir de documentos iniciales más elaborados y acotados y de llevar a cabo una moderación de acompañamiento más estricta, pone un poco más alto el umbral de esfuerzo para la participación ciudadana. A pesar de ello, pensamos que es más deseable una participación responsable y meditada (a la vez que abierta y transparente para que cualquier ciudadano, que no tiene porque ser experto en todo, pueda vigilar en todo momento), que produzca resultados concretos y aplicables, a la búsqueda de una participación principalmente cuantitativa que finalmente no da resultados aplicables en la práctica y que consume el esfuerzo ciudadano en vano. Por ello consideramos que los criterios de la valoración de legitimidad de los resultados del proceso deberían ser de dos índoles: cualitativos en cuanto a los contenidos de las aportaciones; y cuantitativos solo en cuanto a la vigilancia ciudadana sobre el proceso, es decir, en los accesos a la herramienta y participación en el voto. De esta manera puede construirse realmente un proceso de corresponsabilidad y de alta calidad a la vez.



* **Cauces**. A nivel de interfaz debería habilitarse un cauce para que las propuestas inviables - por irrealizables, fuera de las competencias o fuera de los objetivos - se puedan guardar a la vista como descartadas, pero no contaminen la visualización del resto. Es importante tener un registro de este tipo de propuestas inviables y justificarlas debidamente como tal, tanto por una razón de transparencia del proceso como para evitar que resurjan una y otra vez (ver *evitar duplicidades* más adelante).Más aún, las intervenciones fuera de los objetivos pero de interés para la mejora de la ciudad podrían encauzarse directamente por parte de los moderadores a otras herramientas ya habilitadas por el Ayuntamiento, como, por ejemplo, IRIS. Esto permitiría aprovechar con más eficiencia el esfuerzo ciudadano.



* **Política**. Consideramos que la moderación por parte del equipo del Ayuntamiento no puede ser neutral, ya que el gobierno ha sido votado por la ciudadanía en base a un programa y unas directrices políticas en contraposición a otras. Es inevitable y necesario que el diseño programático refleje estas directrices. Estas son las directrices sobre las que debe basarse la moderación. A pesar de que la política del ayuntamiento tenga una dirección clara por la que se le ha votado y elegido, tiene que gobernar para toda la ciudad por lo que debe incluir al máximo la diversidad de opiniones. El trabajo sobre la participación consiste también en integrar, con el máximo de aceptación posible, nuevos matices.

  Por todo ello, los moderadores, designados por parte de los departamentos con competencias sobre los contenidos de los varios procesos, deberían poder acompañar las intervenciones de la ciudadanía, encauzándola y profundizando en los argumentos en tiempo real, sabiendo en todo momento como resolver matices y obtener conclusiones concretas y detalladas.

  *La neutralidad no debería manifestarse en la moderación, que representa las directrices gubernamentales. Sin embargo, la neutralidad sí puede manifestarse más en otros aspectos, por ejemplo, la estética de la web, que en este momento es muy connotada.*



* **En tiempo real**. La presencia de la moderación tiene que acompañar de manera constante los tiempos de participación. La moderación inmediata o incluso previa (poniendo recursos para evitar un cuello de botella y, por supuesto, sin censura injustificada) previene la progresión de propuestas irrealizables o fuera de las competencias del Ayuntamiento que, de no ser redireccionadas desde el principio, contaminarán y perjudicarán la robustez del proceso.



* **Desde la competencia**. En las temáticas en las que el ayuntamiento tiene competencias se debe siempre responder desde la competencia (pudiendo indicando que puede tardar más la respuesta de una moderación completa), teniendo disponible a personal de los departamentos competentes para ello.Se evita así, el voto masivo de propuestas muy biensonantes pero sin fundamento o irrealizables y pueden re-encauzarse desde la competencia hacia una objetivo realista o descartarse.

  *Ej:* [*https://decidim.barcelona/pam/4/proposals/piscinas-municipales-libres-de-cloro*](https://decidim.barcelona/pam/4/proposals/piscinas-municipales-libres-de-cloro)



* **Guía para la participación y la moderación**. Recomendamos la publicación de una guía detallada y justificada sobre qué actuación concreta se pide a la ciudadanía y con qué formato y cómo se llevan a cabo los procesos de moderación. Esta guía puede estar situada en los aspectos generales de uso de la herramienta o incluso en una sección a parte y debería recomendarse su lectura a los usuarios. Es importante fomentar una participación estructurada y una moderación que tenga entre sus objetivos conseguirla.



<br />
### ALGUNAS RECOMENDACIONES TÉCNICAS PARA LA PREVENCIÓN DE ABUSOS DE LA HERRAMIENTA

Hasta ahora no hemos detectado ningún abuso o práctica deshonesta reseñables en la herramienta Decidim.Barcelona por parte de los usuarios. Entendemos que esto ha sido mayormente por la calidad de la herramienta y por su buena gestión, pero también por el hecho de que los resultados no son por ahora claramente vinculantes. En este caso, las posibilidades de que haya intentos de manipulación de la herramienta aumentarán previsiblemente.

El **voto con verificación previa** ya supone ahora mismo una excelente medida técnica de prevención de abusos de tipo spam, astroturfing o similares. La herramienta permite también, por otro lado, otras funcionalidades como la aportación y el comentario por parte de usuarios que no están verificados. Evidentemente, loamos esta decisión que permite la participación en Decidim.Barcelona de manera anónima en aras de la privacidad y también la participación de ciudadanos que no están empadronados en Barcelona pero pueden así aportar sus conocimientos al proceso. No obstante, esta participación sin verificar puede ser más susceptible a abusos de spam y propaganda en la herramienta y por ello dejamos algunas recomendaciones técnicas para su prevención en este sentido:



* **Evitar duplicidades**. A pesar de que la propia herramienta Consul ya cuenta con un sistema de reagrupación de propuestas a posteriori, recomendamos investigar la implementación de una funcionalidad técnica previa que muestre al ciudadano, en el momento de hacer su aportación, propuestas similares a la suya. El ciudadano puede ver si, efectivamente, un propuesta como la suya ya ha sido recogida anteriormente y decidir dar apoyo a esta, e incluso aportar si cree que puede mejorarla, en vez de duplicarla, disminuyendo la dispersión y mejorando la efectividad del proceso.

  *Ej:*  [*https://decidim.barcelona/pam/4/proposals?search=tramvia%20diagonal&order=confidence_score*](https://decidim.barcelona/pam/4/proposals?search=tramvia%20diagonal&order=confidence_score)

  *Un ejemplo de implementación práctica de este tipo de funcionalidad para prevenir duplicados se puede encontrar en el agregador [***meneame.net***](https://www.meneame.net/), de código abierto.*



  Este tipo de tecnología de búsqueda de aportaciones similares mediante análisis semántico o por palabras clave puede usarse también como herramienta para que los moderadores identifiquen fácilmente y prevengan ataques de propaganda, spam y astroturfing.

  Es muy importante tomar las precauciones necesarias para prevenir que la aplicación de medidas técnicas automáticas de este tipo dañen la libertad de expresión y sean sinónimo de censura. Algunas medidas a tomar:

  - Que el proceso de retirada de cualquier contenido dependa siempre de una revisión final y verificación por parte de un moderador humano.

  - La mayor transparencia posible en el código de los algoritmos utilizados y explicación de los mismos. Esto mitigaría falsas acusaciones de censura.

  - Implementación de procesos de apelación a la retirada de contenidos.

  Razonablemente, cabe permitir alguna flexibilidad sobre los dos primeros puntos anteriores, siempre por seguridad y en casos de flagrante abuso. Ejemplo: la publicación de una misma aportación una y otra vez de manera recursiva, como spam, desde usuarios diferentes pero desde una misma IP. Este tipo de abuso se minimizaría en gran medida si se indica con claridad desde el principio del proceso que las propuestas similares o idénticas serán o bien eliminadas o bien reagrupadas sistemáticamente por la moderación automática. Es absolutamente justificado que las propuestas no tomen relevancia por su reiteración sino solo por su consistencia. Naturalmente todas las evidencias del proceso deben guardarse y ser trazables para tener pruebas fehacientes frente a cualquier reclamación.



* **Discusión relevante**. Recomendamos encarecidamente estudiar la implementación de un sistema de valoración de las aportaciones y los comentarios mediante el algoritmo de Wilson. Este sistema corrige estadísticamente vulnerabilidades en el cálculo de priorizaciones y votaciones que pueden ser abusadas para el lobby deshonesto y el spam “*rescatando*” y valorizando las aportaciones relevantes respecto a otras controvertidas pero que pueden no tener ningún interés.

  *Evan Miller explica la teoría matemática detrás del algoritmo de Wilson aquí:* [*http://www.evanmiller.org/how-not-to-sort-by-average-rating.html*](http://www.evanmiller.org/how-not-to-sort-by-average-rating.html)



* **Distinción por barrio**. Las propuestas que afectan únicamente a barrio/s concreto/s deberían clasificarse como tal desde el principio. De este modo la gente interesada del propio barrio puede encontrarlas más fácilmente y tiene mayor poder decisorio sobre ellas. Si se dejan en el apartado general de propuestas, las propuestas de un barrio concreto resultan más susceptibles a ser objetivo de abusos de astroturfing y lobby deshonesto puesto que ahí la gente del barrio tendría más dificultad en localizarlo mientras que el autor de la propuesta puede promocionarla artificialmente pasándola entre sus contactos por enlace directo.

  *Ej:* [*https://decidim.barcelona/pam/4/proposals/un-local-definitiu-per-la-farinera-ateneu-del-clot*](https://decidim.barcelona/pam/4/proposals/un-local-definitiu-per-la-farinera-ateneu-del-clot)



<br />
#### Otros aspectos a mejorar



*Citas presenciales*: El resultado de las citas presenciales está en algunos casos muy bien detallado pero en otros poco o nada. Los resultados que deberían aportarse de manera indispensable en todos los casos son l*os puntos decididos y conclusiones finales del encuentro*. La confusión entre los contenidos genéricos del encuentro y los objetivos que ha alcanzado reduce la efectividad de las aportaciones recibidas en los encuentros presenciales. Además de esto, y en aras de la transparencia, recomendaríamos también incluir un *streaming* en directo o vídeo del encuentro que quede colgado en la plataforma, siempre preguntando si algún ciudadano prefiere mantener su anonimato y tomando medidas si así es (desde cerrar el plano del *streaming* para que grabe solo los miembros del Ayuntamiento, hasta no hacerlo en absoluto si, por ejemplo, el tema es muy delicado y los asistentes podrían tener represalias).



<br />
### NOTAS FINALES

La coherencia y transparencia de los algoritmos técnicos y de la moderación crean un entorno que combina de forma eficaz y realmente democrática la vigilancia de la institución y de la ciudadanía sobre el proceso.

Recalcamos la importancia de conseguir un proceso robusto y una moderación eficiente y resolutiva y recomendamos estudiar la implementación de las sugerencias técnicas y metodológicas contenidas en este informe como medida preventiva ante futuros abusos.



===========================



*[1] Algunas referencias:*

Free Culture Forum 2010 y Free Culture Forum 2011<br />[https://2010.fcforum.net/en/topics/](https://2010.fcforum.net/en/topics/)<br />[https://2012.fcforum.net/tematicas-y-programa-2012/](https://2012.fcforum.net/tematicas-y-programa-2012/)

Descripción metodológica y algunos textos enmendados por la Red Ciudadana Partido X<br />[https://partidox.org/elaboracion-programa-emergencias-concretas/](https://partidox.org/elaboracion-programa-emergencias-concretas/)<br />[http://comentarios.partidox.org/](http://comentarios.partidox.org/)

Un ejemplo de corrección del ‘Plan de Emergencias para salir de la crisis’ de la Red Ciudadana Partido X<br />[http://comentarios.partidox.org/text/3XsGBg9HYhh/view/](http://comentarios.partidox.org/text/3XsGBg9HYhh/view/)

Desarrollo participativo del ‘Programa para las elecciones Europeas’ de la Red Ciudadana Partido X partiendo del consenso de los textos ya previamente elaborados<br />[http://eleccioneseuropeas.partidox.org/programa-europeo/#actuaeneuropa](http://eleccioneseuropeas.partidox.org/programa-europeo/#actuaeneuropa)<br />[http://comentarios.partidox.org/text/8wyakFD59aw/view/](http://comentarios.partidox.org/text/8wyakFD59aw/view/) 
