from flask import Flask, jsonify
import os
import psycopg2

app = Flask(__name__)

def get_plants():
    # dummy list; can be extended to query a database
    return [{"name": n} for n in ["Tulsi", "Mint", "Basil", "Aloe Vera"]]

@app.route("/plants")
def plants():
    return jsonify({"plants": get_plants()})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
