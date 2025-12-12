from flask import Flask, jsonify
import os

app = Flask(__name__)
VERSION = os.environ.get("APP_VERSION", "v0.0.0")

@app.route("/")
def index():
    return f"<h1>Capstone App — {VERSION}</h1>"

@app.route("/health")
def health():
    return jsonify({"status": "ok", "version": VERSION}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
