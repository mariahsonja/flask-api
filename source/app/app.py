import connexion
from flask import request, jsonify


def greetings():
    name= request.json.get('name')
    response = f'Welcome, {name}!'
    return jsonify({'greeting': response})


APP = connexion.App(__name__)
APP.add_api('swagger.yaml', base_path='/flask-api')