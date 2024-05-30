#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# standard python imports

from flask_restful import Resource, reqparse
from app.models.product import ProductModel
from app.util.logz import create_logger


class Product(Resource):
    def __init__(self):
        self.logger = create_logger()

    parser = reqparse.RequestParser()
    parser.add_argument('id', type=int, required=True,
                        help='This field cannot be left blank')

    def get(self, id):
        product = ProductModel.find_by_id(id=id)
        self.logger.info(f'returning item: {product.json()}')
        if product:
            return {'data': product.json()}, 200
        return {'message': 'Product not found'}, 404


class ProductList(Resource):

    def get(self):
        return {'data': [product.json() for product in ProductModel.query.all()]}, 200
