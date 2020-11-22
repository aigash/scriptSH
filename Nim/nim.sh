echo "P'tite partie de Nim ?"
echo "CEST L'HEURE DU DU-DU-DU-DU-DU DUEEEEEEL !!!"
echo ""
echo ""

game_running=true
nbElements=20

while [ $nbElements -gt 0 ]
do
  echo "À TOI D'JOUEEEEEER !!!"
  echo ""
  echo "Tu veux combien d'carte(s)? 1, 2 ou 3? C'est moi qui régale"
  echo ""
  read playerChoice
    if [ $playerChoice -lt 1 ] || [ $playerChoice -gt 3 ]
    then
      echo "Non parce qu'en fait j'avais dit 1,2 ou 3 j'halulu quoi le culot du mec. J'te donne une consigne tu l'applique pas, qu'est-ce qu'il se passe en fait tu m'respecte pas c'est ça ? J'suis pas ta chienne OK ? Vous autres utilisateurs d'Ubuntu vous avez un melooon, incroyable. Tu vas redescendre très vite de deux étages gamin et tu vas me faire le plaisir de prendre cette fois-ci 1, 2 ou 3 cartes et que j't'y reprenne plus !"
      read playerChoice
      let "nbElements = nbElements - playerChoice"
      echo ""
      echo "Il ne reste malheureusement plus que $nbElements cartes"
      echo ""
    elif [ $playerChoice -ge 1 ] || [ $playerChoice -le 3 ]
    then
      let "nbElements = nbElements - playerChoice"
      echo ""
      echo "Attention, le nombre de cartes n'est plus que de $nbElements"
      echo ""
    fi

  echo "C'EST À MOI !!!"
  echo ""
  let "iaChoice = 4 - playerChoice"
  echo "J'ACTIVE MA CARTE MAGIQUE QUI ME PERMET DE PRENDRE $iaChoice CARTE(S) ET JE MET FIN À MON TOUR"
  echo ""
  let "nbElements  = nbElements - iaChoice"
  echo "Quelle progression incroyable, il ne reste plus que $nbElements carte(s) !"
  echo ""
  if [ $nbElements -eq 0 ]
  then
    echo "PARTIE TERMINÉE LOSER DONNE TON BADGE D'ARÈNE ET TRACE TA ROUTE"
    game_running=false
  fi
done
