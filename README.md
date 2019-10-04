# Canzoniere di Guerra SNS
Il canzoniere nasce dalla volontà di raccogliere i vari cori cantati nella annuale [guerra con i gavettoni tra Normale e Sant'Anna](https://www.google.com/search?hl=it&q=guerra%20normale%20sant%27anna) che finora erano stati tramandati soltanto oralmente.

## Ottenere i pdf
Normalmente potete ottenere i pdf delle ultime versioni [dalla pagina delle release](https://github.com/trenta3/canzoniere/releases).
Se avete modificato i file o se ci state lavorando, sarà però necessario procedere alla compilazione.

### Compilazione dei file
Essendo scritti in LaTeX, per compilare i file è necessario avere installata una versione di TeX funzionante, oltre al programma `latexmk` usato per compilarli, anche se non è strettamente necessario.
Basterà dare il comando `make` per ottenere direttamente tutti i file compilati.

Se si conosce Docker, si potrà usare:
```bash
docker-compose build && USER=$(id -u) docker-compose up
```
che provvederà a compilarli al posto nostro.

## Licenza
I testi delle canzoni in questo lavoro sono soggetti alla licenza Creative Commons 4.0 BY-SA, che potete trovare nel file [LICENSE](./LICENSE).
Sono esclusi dalla licenza le registrazioni delle canzoni della guerra ed i testi modificati, che mantengono i diritti dei loro creatori originari.
