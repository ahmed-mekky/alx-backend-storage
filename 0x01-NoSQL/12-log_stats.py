#!/usr/bin/env python3
"""python script for mongodb"""


from pymongo import MongoClient

client = MongoClient('localhost', 27017)
coll = client.logs.nginx

print(f"{coll.count_documents({})} logs")
print("Methods:")
methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
for method in methods:
    print(f"\tmethod {method}: {coll.count_documents({'method': method})}")
print(f"{coll.count_documents({'method': 'GET', 'path': '/status'})} status check")
