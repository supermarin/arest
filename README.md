# BubbleWrap HTTP testing web app

This is a simple application made for testing the HTTP module.
Once you're done hacking, your specs are passing, you can confirm it all works properly with the real world requests locally.

Just hit the root url with the desired HTTP method (GET,POST,DELETE,..) and you should get the parameters passed in back in JSON.

### Example
Let's assume we're using [POW](https://github.com/37signals/pow/), so my app is located at ``` bwhttp.dev ```

``` ruby

(main)> BW::HTTP.post('http://bw.dev', payload: { name: 'marin'}) { |response| p BW::JSON.parse(response.body) }
# =>  {"method"=>"POST", "name"=>"marin"}

(main)> BW::HTTP.get('http://bw.dev?nick=mneorr') { |response| p BW::JSON.parse(response.body) }
# =>  {"method"=>"GET", "nick"=>"mneorr"}


(main)> user = { name: 'marin', twitter: '@mneorr', followers: ['John', 'Mark', 'Ive'] }
# => {:name=>"marin", :twitter=>"@mneorr", :followers=>["John", "Mark", "Ive"]}
(main)> BW::HTTP.get('http://bw.dev', payload: user) { |response| p BW::JSON.parse(response.body) }
# =>  {"name"=>"marin", "twitter"=>"@mneorr", "followers"=>["John", "Mark", "Ive"], "method"=>"GET"}

```


#### TODO

Authentications, redirects
