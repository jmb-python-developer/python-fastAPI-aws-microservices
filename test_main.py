"""
Unit test class, which uses fastAPI testing library, for the router/controller/app API main class.
"""
from fastapi import FastAPI
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "This is a Wikipedia API. Call paths /search or /wiki to use the functionality provided. Use /docs for API developers documentation"}

