from flask import Flask
import os
import psycopg2

app = Flask(__name__)

@app.route('/')
def index():
    db_url = os.getenv('DATABASE_URL')
    try:
        conn = psycopg2.connect(db_url)
        conn.close()
        db_status = "DB Connected"
    except:
        db_status = "DB Down"
    return f"Day 10: Riches owns DevOps + Flask + Postgres | {db_status}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
