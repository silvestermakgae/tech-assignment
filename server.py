import numpy as np
from flask import Flask, request, jsonify, request, jsonify
import joblib
import pandas as pd
from gevent.pywsgi import WSGIServer
import io


model = joblib.load('gbm.joblib')
app = Flask(__name__)

@app.route('/')
def api_root():
    return 'ping'

@app.route('/api', methods=['POST'])
def train():
    if request.method == 'POST':
        data = request.get_json(force=True)
        pred = model.predict(data)

        return jsonify(pred)
    return 'Not Supported'


if __name__ == '__main__':
    http_server = WSGIServer(('', 5000), app)
    http_server.serve_forever()