from flask import Flask, render_template
from flask_bower import Bower

app = Flask(__name__)


@app.route("/")
def hello():
    return render_template('home.html')

Bower(app)

if __name__ == "__main__":
    app.run(debug=True)
