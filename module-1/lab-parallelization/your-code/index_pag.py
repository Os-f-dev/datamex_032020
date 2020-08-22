def index_pag(link):
    try:
        resp = requests.get(link)
        sopa = bs(resp.content, "html.parser")
        filename = slugify(link)
        with open(f"wikipedia/{filename}.html", 'wb') as f:
            f.write(sopa.encode(formatter=None))
        return
    except:
        pass
