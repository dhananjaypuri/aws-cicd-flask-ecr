from flask import Flask
import socket

app = Flask(__name__);

@app.route('/')
def home():
    return f"This is running on {socket.gethostname()}<br/><br/><h1>This is Home Page  code deploy!!!!! <h1/>";

@app.route('/contact')
def contact():
    return f"This is running on {socket.gethostname()}<br/><br/><h1>This is Contact Page !!!!! <h1/>";

if __name__ == "__main__":
    app.run(debug=True);
