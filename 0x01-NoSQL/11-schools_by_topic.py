#!/usr/bin/env python3
"""python script for mongodb"""


def schools_by_topic(mongo_collection, topic):
    """python function for mongodb"""
    if not mongo_collection:
        return []
    return list(mongo_collection.find({"topics": topic}))
