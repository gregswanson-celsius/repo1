# permissionless command to extract all coins available on coingecko.
# json output includes below. 

# Note: the API requires the "id" be used to extract price.

#    {
#    "id": "ethereum",
#    "symbol": "eth",
#    "name": "Ethereum"
#    },

curl https://api.coingecko.com/api/v3/coins/list |jq >out
