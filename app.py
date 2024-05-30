#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# standard python imports

from flask import Flask
from flask_migrate import Migrate
from flask_jwt_extended import JWTManager
from flask_restful import Api

from app.resources.item import Item, ItemList
from app.resources.store import Store, StoreList
from app.resources.user import UserRegister, User
from app.resources.product import Product, ProductList
from app.config import postgresqlConfig
from app.db import db
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
app.config['SQLALCHEMY_DATABASE_URI'] = postgresqlConfig
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# Setup the Flask-JWT-Extended extension
app.config["JWT_SECRET_KEY"] = "Dese.Decent.Pups.BOOYO0OST"  # Change this!
jwt = JWTManager(app)
api = Api(app)
migrate = Migrate(app, db)

with app.app_context():
    db.init_app(app)
    db.create_all()

# @app.before_request
# def create_tables():
#     from app.db import db
#     db.init_app(app)
#     db.create_all()


# jwt = JWT(app, authenticate, identity)  # Auto Creates /auth endpoint

api.add_resource(Item, '/item/<string:name>')
api.add_resource(ItemList, '/items')
api.add_resource(UserRegister, '/register')
api.add_resource(User, '/user')
api.add_resource(Store, '/store/<string:name>')
api.add_resource(StoreList, '/stores')
api.add_resource(Product, '/product/<int:id>')
api.add_resource(ProductList, '/products')

if __name__ == '__main__':
    # TODO: Add swagger integration
    app.run(host='0.0.0.0', debug=True)  # important to mention debug=True
