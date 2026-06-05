from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Day 8: Riches owns DevOps + Flask"

@app.route('/health')
def health():
    return {"status": "alive", "day": 8}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
