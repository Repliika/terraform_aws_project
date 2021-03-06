import falcon

class HelloResource(object):
    def on_get(self, req, resp):
        resp.status = falcon.HTTP_200
        resp.body = ("omg it works, hello")

class Page2Resource(object):
    def on_get(self, req, resp):
        resp.status = falcon.HTTP_200
        resp.body = ("This is the second pag, :O")

app = falcon.API()

hello = HelloResource()

page2 = Page2Resource()

app.add_route('/', hello)
app.add_route('/page2', page2)