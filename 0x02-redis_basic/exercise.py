#!/usr/bin/env python3
"""Cache module"""
import redis
from uuid import uuid4
from typing import Union

class Cache:
    """Cache class"""
    def __init__(self):
        """Constructor"""
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """
        Method that takes a data argument and returns a string
        """
        key = str(uuid4())
        self._redis.set(key, data)
        return key
