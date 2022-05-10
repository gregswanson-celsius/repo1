for file in `cat file.list`
 do
     coin=`curl -X GET "https://api.coingecko.com/api/v3/simple/price?ids=${file}&vs_currencies=usd" -H 'accept: application/json' -s | cut -d : -f1 | sed 's/"//g' | sed 's/{//g'`
     price=`curl -X GET "https://api.coingecko.com/api/v3/simple/price?ids=${file}&vs_currencies=usd" -H 'accept: application/json' -s | cut -d : -f3 | sed 's/"//g' | sed 's/}//g'`
         echo "$coin : $price"
 done
