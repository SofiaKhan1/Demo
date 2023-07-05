import hashlib
def mine_block(previous_hash, transactions, difficulty):
    nonce = 0
    prefix = '0' * difficulty
    while True:
        data = str(nonce) + previous_hash + transactions
        hash_result = hashlib.sha256(data.encode()).hexdigest()
        if hash_result.startswith(prefix):
            print("Block mined successfully!")
            print("Nonce:", nonce)
            print("Hash:", hash_result)
            return hash_result
        nonce += 1
def main():
    previous_hash = '0000000000000000000000000000000000000000000000000000000000000000'
    transactions = 'A sends 1 Ether to B'
    difficulty = 4
    mined_hash = mine_block(previous_hash, transactions, difficulty)
if __name__ == '__main__':
    main()
