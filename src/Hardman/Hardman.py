import requests

api_key = "lwYRj6uiu8m5iExKumiFaZBh8Kf9fpOL"
owner_address = "0x2Ee9a974FC5D0f38a531eDb01FaA76C3b72574b4"

url = "https://eth-mainnet.g.alchemy.com/nft/v3/{}/getNFTs".format(api_key)
params = {
    "owner": owner_address,
    "withMetadata": "true"
}

try:
    response = requests.get(url, params=params)
    response.raise_for_status()
    
    if response.status_code == 200:
        data = response.json()
        owned_nfts = data.get("ownedNfts", [])
        if owned_nfts:
            for nft in owned_nfts:
                contract = nft["contract"]["address"]
                token_id = nft["id"]["tokenId"]
                print("Contract: {}, Token ID: {}".format(contract, int(token_id, 16)))
        else:
            print("No NFTs found for the given address.")
    else:
        print("Error: {} - {}".format(response.status_code, response.text))
except requests.exceptions.RequestException as e:
    print("Request failed: {}".format(e))