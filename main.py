
# Third Party Libraries
from fastapi import FastAPI
import uvicorn

# Project's Logic Code
from project_libs.logic import wiki

app = FastAPI()
"""
Basic FastAPI application with two routes: the root route which responds with a JSON message, and an add route that takes two integer path parameters, adds them, and returns the sum.
"""


@app.get("/")
async def root():
    return {"message": "This is a Wikipedia API. Call paths /search or /wiki to use the functionality provided"}


@app.get("/add/{num1}/{num2}")
async def add(num1: int, num2: int):
    """Add two numbers together"""
    total = num1 + num2
    return {"total": total}


if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")
