#!/usr/bin/env python3
"""python script for mongodb"""


def update_topics(mongo_collection, name, topics):
    """python function for mongodb"""
    if not mongo_collection:
        return []
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})
