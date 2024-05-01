#!/usr/bin/env python3
"""python script for mongodb"""


def insert_school(mongo_collection, **kwargs):
    """python function for mongodb"""
    if not mongo_collection:
        return []
    return list(mongo_collection.insert_one(kwargs).inserted_id)
