#!/usr/bin/env python3
"""python script for mongodb"""


def list_all(mongo_collection):
    """python function for mongodb"""
    if not mongo_collection:
        return []
    return list(mongo_collection.find())
