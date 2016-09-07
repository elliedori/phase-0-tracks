# HTTP Requests

Some common HTTP status code include: 

* 200 – OK
* 202 – accepted
* 204 – no content
* 400 – bad request
* 401 – unauthorized
* 404 – not found
* 500 – internal server error
* 502 – bad gateway
* 504 – gateway timeout


A GET requests data from a specified resource, whereas a POST request submits data to be processed to a specific resource. From my understanding, we use GET requests when we want to load up a page or display some information that's stored elsewhere. We use POST to update information on a server, provide a block of data, etc. 

A cookie is a plain text file that's stored by the browser on the user's machine. The cookie gets sent to server with each request, which can be used to identify the user. Cookies are what allow us to login just once and stay logged in for a long time. If we were to clear cookies, then our stored information would be cleared and we would have to re-authorize with that site.

Cookies are set with Set-Cookie: value
and are sent as Cookie: value
