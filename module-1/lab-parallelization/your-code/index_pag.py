def index_pag(link):
    os.chdir('C:/Users/Tomaas/datamex_082020/module-1/lab-parallelization/your-code/wikipedia')
    try:
        estrella=req.get(link).content
        contenido=str(bs(estrella,'html.parser'))
        comp = slugify(link)+'.html'
        with open (comp,'w',encoding="utf-8") as f:
            f.write(contenido)
    except:
        pass
