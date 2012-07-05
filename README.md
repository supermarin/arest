# A(wesome) REST debug server

This is a simple application made for testing the HTTP requests. <br>
Confirm what you're sending from a mobile device to a web server.
<br>

Hit the server like you would hit the production one, and you should get the parameters passed in back in JSON or XML. <br>
Supported HTTP methods: GET, POST, DELETE, PUT, HEAD. 

### Example
GET - [JSON](http://arest.us/json?name=marin&surname=usalj&twitter=@mneorr&sample_array[]=one&sample_array[]=two&sample_array[]=three) <br>
GET - [XML](http://arest.us/xml?name=marin&surname=usalj&twitter=@mneorr&sample_array[]=one&sample_array[]=two&sample_array[]=three)


For instance, I've used this one to test the BubbleWrap HTTP library.

``` ruby

(main)> BW::HTTP.post('http://log.mneorr.com/json', payload: { name: 'marin'}) { |response| puts response.body.to_str }
=>  {"method":"POST","params":{"name":"marin"}}

(main)> BW::HTTP.get('http://log.mneorr.com/json?nick=mneorr') { |response| puts response.body.to_str }
=>  {"method":"GET","params":{"nick":"mneorr"}}


(main)> user = { name: 'marin', twitter: '@mneorr', followers: ['John', 'Mark', 'Ive'] }
=> {:name=>"marin", :twitter=>"@mneorr", :followers=>["John", "Mark", "Ive"]}

(main)> BW::HTTP.put('http://log.mneorr.com/json', payload: user) { |response| puts BW::JSON.parse(response.body) }
=>  {"method"=>"PUT", "params"=>{"followers"=>"[\"John\", \"Mark\", \"Ive\"]", "name"=>"marin", "twitter"=>"@mneorr"}}

```


#### TODO

Authentications, redirects
