import os
import flask_assets as assets
from webassets.filter import get_filter

from flask import Flask, render_template
from flask_bower import Bower

app = Flask(__name__)
env = assets.Environment(app)

env.load_path = [
    os.path.join(os.path.dirname(__file__), 'scss'),
    os.path.join(os.path.dirname(__file__), 'bower_components')
    ]

scss_filter = get_filter('scss', load_paths=[
    '.',
    '../bower_components/foundation-sites/scss'
    ])

env.register(
    'css_all',
    assets.Bundle(
        'all.scss',
        filters=scss_filter,
        output='css_all.css'
        )
    )


@app.route("/")
def home():
    return render_template('home.html')

Bower(app)

if __name__ == "__main__":
    app.run(debug=True)
