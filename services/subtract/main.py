from typing import Union

from fastapi import FastAPI

app = FastAPI()


@app.get("/help")
def help():
    return {
            "Help": "subtracts two parameter",
            "Example": "http://127.0.0.1:8000/?a=2&b=9"
            }


@app.get("/")
def subtract(a: int, b: int):
    return {
            "func_name": "subtract",
            "result": a - b
            }
