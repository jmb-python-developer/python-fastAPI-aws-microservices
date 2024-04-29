
# Third Party Libraries
from fastapi import FastAPI
import uvicorn

# Project's Logic Code
from project_libs.logic import wiki, search_wiki

app = FastAPI()
"""
Basic FastAPI application with two routes: the root route which responds with a JSON message, and an add route that takes two integer path parameters, adds them, and returns the sum.
"""


@app.get("/")
async def root():
    return {"message": "This is a Wikipedia API. Call paths /search or /wiki to use the functionality provided. Use /docs for API developers documentation"}


@app.get("/search/{value}")
async def search(value: str):
    """Produces a search of keywords in wikipedia based on input value"""
    search_results = search_wiki(value)
    return {"Wikipedia Search Keywords" : search_results}

@app.get("/wiki/{name}")
async def search(name: str):
    """Returns a wikipedia search with the name or keyword passed as criteria"""
    wiki_result = wiki(name)
    return {"Wiki Search Results": wiki_result}

if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")
