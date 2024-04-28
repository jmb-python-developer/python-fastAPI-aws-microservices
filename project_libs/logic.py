import wikipedia


def wiki(name="Einstein", length=1):
    """This is a Wikipedia fetcher function"""
    wiki_summary = wikipedia.summary(name, length)
    return wiki_summary
