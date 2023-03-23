from flask import Flask
import socket

app = Flask(__name__);

@app.route('/')
def home():
    return f"This is running on {socket.gethostname()}<br/><br/><h1>This is Home Page deployed from codepipeline ... !!!!! <h1/>";

@app.route('/contact')
def contact():
    return f"This is running on {socket.gethostname()}<br/><br/><h1>This is Contact Page  Coming from code pipeline !!!!! <h1/>";

if __name__ == "__main__":
    app.run(debug=True);
