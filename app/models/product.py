from msilib import type_nullable

from app.db import db


class ProductModel(db.Model):
    __tablename__ = "product"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    price = db.Column(db.Float, nullable=False)
    url_store = db.Column(db.String(255), nullable=True)
    images = db.relationship('ProductImageModel', lazy='dynamic')
    description = db.Column(db.Text, nullable=True)

    def __init__(self, name, price, images, url_store):
        self.name = name
        self.price = price
        self.images = images
        self.url_store = url_store
        self.description = None

    def json(self):
        return {
            'id': self.id,
            'name': self.name,
            'url_store': self.url_store,
            'price': self.price,
            'images': [image.json() for image in self.images.all()],
            'description': self.description
        }

    @classmethod
    def find_by_id(cls, id):
        return cls.query.filter_by(id=id).first()


class ProductImageModel(db.Model):
    __tablename__ = "product_image"

    id = db.Column(db.Integer, primary_key=True)
    image_url = db.Column(db.String(255), nullable=False)
    product_id = db.Column(db.Integer, db.ForeignKey('product.id'), nullable=False)

    def __init__(self, image_url, product_id):
        self.image_url = image_url
        self.product_id = product_id

    def json(self):
        return {'id': self.id, 'image_url': self.image_url, 'product_id': self.product_id}
