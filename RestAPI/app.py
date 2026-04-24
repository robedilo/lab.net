from flask import Flask, jsonify, send_from_directory
import json
import socket

app = Flask(__name__)

@app.route("/")
def home():
    return send_from_directory(".", "index.html")

@app.route("/api/prodotti", methods=["GET"])
def get_prodotti():
    with open("prodotti.json", "r", encoding="utf-8") as file:
        prodotti = json.load(file)

    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)

    return jsonify({
        "server": {
            "hostname": hostname,
            "ip": ip
        },
        "prodotti": prodotti
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)