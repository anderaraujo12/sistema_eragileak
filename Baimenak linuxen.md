# Baimenak Linux
- [Baimenak Linux](#baimenak-linux)
  - [Fitxategi eta direktorioen baimenak](#fitxategi-eta-direktorioen-baimenak)
    - [Baimen taldeak](#baimen-taldeak)
    - [Baimenak esleitzen modu simbolikoan](#baimenak-esleitzen-modu-simbolikoan)
    - [Baimenak modu oktalean](#baimenak-modu-oktalean)
  - [Sticky bit baimena](#sticky-bit-baimena)

## Fitxategi eta direktorioen baimenak

Fitxategi eta direktorioen baimenak hurrengo aginduarekin ikusi ditzakegu.

```bash
ls -al
```
![alt text](image.png)

### Baimen taldeak

**Jabea (user):** Fitxategi bat sortzen dugunean, sortzailea jabea izango da defektuz.
**Taldea (group):** Fitxategi baten jabetza talde bati ere bai dagokio
**Besteak (other):** Jabeak edo taldekideak ez direnak

![alt text](image-1.png)

### Baimenak esleitzen modu simbolikoan

Linuxen baimen motak eta `chmod` aginduaren erabilera azalduko ditut:

1. **Baimen Motak**:

   - **Read (Irakurri)**: Erabiltzaileak fitxategia irakurri dezake.
   - **Write (Idatzi)**: Erabiltzaileak fitxategia editatu, eguneratu edo ezabatu dezake.
   - **Execute (Exekutatu)**: Erabiltzaileak fitxategia exekutatu dezake, hau da, script-ak, programa-k edo karpeta-k exekutatu ditzake.
   
   Baimen mota hauek erabilzaile bakoitzari aplikatu daitezke, eta baimenak fitxategiaren jabetza, taldearen jabetza eta beste erabiltzaile batzuen baimenak izan daitezke.

2. **`chmod` Agindua**:

   `chmod` komandoa erabiliz, fitxategien baimenak aldatu ditzakegu. Oinarri hauek dira:

   - **Oinarriak**:
     - **`u`**: Fitxategiaren jabea (owner).
     - **`g`**: Fitxategiaren taldea (group).
     - **`o`**: Beste erabiltzaile batzuk (others).
   
   - **Operazioak**:
     - **`+`**: Baimena gehitu.
     - **`-`**: Baimena kendu.
     - **`=`**: Baimenak zehaztu.
   
   - **Baimen Motak**:
     - **`r`**: Irakurketa baimena.
     - **`w`**: Idazketa baimena.
     - **`x`**: Exekuzio baimena.

   Adibideak:

   ```bash
   # Erabiltzaileari idazketa baimena gehitu fitxategian
   chmod u+w fitxategia.txt
   
   # Erabiltzailearen exekuzio baimena kentzea script-ari
   chmod u-x script.sh
   
   # Erabiltzaileei irakurketa eta exekuzio baimenak ezarri programa bati
   chmod ug+rx programa
   
   # Guztiei exekuzio baimena ezarri fitxategi bati
   chmod a+x fitxategia
   ```

Honek baimen motak kontrolatzeko aukera ematen dizu, hau da, nork norki zein baimenak dituen eta zer ekintzak egin ditzakeen fitxategi edo karpeta batean.

Adibidea, jabeari (user): exekutatzeko baimen horrela eman ahal diogu
```bash
chmod u+w text.txt
```
Honela, taldeari eta bestei exekutatzeko eta idazteko baimenak emango diogu.

```bash
chmod go+wx  text.txt
```
Bestei, irakurtzeko baimena horrelo kendu diezaiokegu 
```bash
chmod o-r text.txt
```

### Baimenak modu oktalean

- 0 = 000 = --- baimenarik gabe
- 1 = 001 = -x = exekutazio baimena
- 2 = 010 = w = idazeteko baimena
- 3 = 011 = wx = idazteko eta exekutzeko 
- 4 = 100 =r = irakurtzeko baimena
- 5 = 101 =r-x = irakurtzeko eta exekutzteko baimena 
- 6 = 110 =rw = irakurtzeko eta idazteko baimena 
- 7 = 111 = rwx = irakurtzeko, idazteko eta exekutatzeko baimena

Adibidez baimen guztiak kentzeko
```bash
chmod 000 froga.txt
```

Baimen guztiak gehitzeko

```bash
chmod 777.froga.txt
```

Etabiltzaileari baimen guztiak emateko eta besteei edo taldekidei irakurtze eta exekutazio baimenak emateko.

## Sticky bit baimena
Sticky bit daukan fitxategia edo direktorio bat bakarrik jabea edo rootek aldatu ahal dio izena edo ezabatu ahal du.

Sticky bia jartzeko
```bash
chmod +t text.txt
```
Sticky bia kentzeko

```bash
chmod -t text.txt
```

![alt text](image-4.png)
