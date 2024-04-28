import wikipedia


def wiki(name="Einstein", length=1):
    """This is a Wikipedia fetcher function"""
    wiki_summary = wikipedia.summary(name, length)
    return wiki_summary


def search_wiki(name="Einstein"):
    """Search Wikipedia and provides a summary for the given search work passed."""
    return wikipedia.search(name)
