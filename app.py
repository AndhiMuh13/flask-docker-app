from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    """
    Home route with a simple welcome message.
    """
    return "<h1>Welcome to Dockerized Flask App!</h1><p>This app is running inside Docker.</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
