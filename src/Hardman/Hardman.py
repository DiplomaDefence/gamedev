from moralis import sol_api

api_key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub25jZSI6IjI0NWYzNGVlLWM3OGItNGU0OS1iODM2LTg5YjZiZTAxZmM0ZSIsIm9yZ0lkIjoiNDQzMjg0IiwidXNlcklkIjoiNDU2MDgyIiwidHlwZUlkIjoiOTZmYmI2ZWItZmMzMC00ZTIwLThmYjItYjM2YmQ3NzgzODhiIiwidHlwZSI6IlBST0pFQ1QiLCJpYXQiOjE3NDUzNDE5NzEsImV4cCI6NDkwMTEwMTk3MX0.ftGHaLoitjs-mJuDftRUXOGYz1XjLiAkPxKU_cNONuU"

params = {
  "network": "devnet",
  "address": "2W4z2NextyTDazZ6sd8SJ5DtCSuRbaaC816PhqiFZt7e"
}

result = sol_api.account.get_nfts(
  api_key=api_key,
  params=params,
)

result2 = sol_api.account.balance(
  api_key=api_key,
  params=params,
)

print(result)
print(result2)