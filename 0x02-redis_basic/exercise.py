#!/usr/bin/env python3
import redis
from uuid import uuid4
from typing import Union

class Cache:
    def __init__(self):
        self ._redis = redis.Redis()

    def store(self, data: Union[int, str, bytes, float]) -> str:
        key = str(uuid4())
        self._redis.set(key, data)
        return key
