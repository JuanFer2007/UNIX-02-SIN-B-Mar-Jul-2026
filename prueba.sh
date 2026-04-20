 1  git remote -v
    2  git fetch upstream
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git push -u origin eval_p2_1_v1
    5  cd nebula
    6  mv registro bitacoras
    7  mv registros bitacoras
    8  ls
    9  mkdir bitacoras
   10  mkdir borradores
   11  mv cosmos.txt bitacoras/
   12  git add .
   13  git commit -m "Fix problema 1: estructura de directorios corregida"
   14  ls
   15  mv estrella.bak estrella.conf
   16  git add .
   17  git commit -m "Fix problema 2: archivos movidos y renombrados"
   18  ls
   19  chmod 640 bitacoras/cosmos.txt
   20  ls -l bitacoras/cosmos.txt
   21  git add .
   22  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   23  chmod u+x galaxia.sh
   24  chmod o-w estrella.conf
   25  ls -l galaxia.sh estrella.conf
   26  git add .
   27  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   28  chmod 755 galaxia.sh
   29  git add .
   30  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   31  chmod u+s galaxia.sh
   32  ls -l galaxia.sh
   33  git add .
   34  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   35  git push
   36  git add .
   37  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   38  git commit --allow-empty -m "Fix problema 5: SUID activado en galaxia.sh"
   39  sudo chmod +t /tmp/nebula_zone
   40  sudo mkdir -p /tmp/nebula_zone
   41  sudo chmod 777 /tmp/nebula_zone
   42  sudo chmod +t /tmp/nebula_zone
   43  ls -ld /tmp/nebula_zone
   44  git commit --allow-empty -m "Fix problema 6: sticky bit en /tmp/nebula_zone"
   45  gpg --full-generate-key
   46  gpg --list-keys
   47  gpg --encrypt --recipient aurora@nebula.lab bitacoras/cosmos.txt
   48  ls bitacoras
   49  git add .
   50  git commit -m "Fix problema 7: llave GPG generada y cosmos.txt cifrado"
   51  gpg --clearsign estrella.conf
   52  gpg --local-user aurora@nebula.lab --clearsign estrella.conf
   53  ls
   54  gpg --local-user aurora@nebula.lab --output galaxia.sh.sig --detach-sign galaxia.sh
   55  gpg --verify galaxia.sh.sig galaxia.sh
   56  git add .
   57  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   58  git push
   59  git push -'all
   60  git push --all
   61  history