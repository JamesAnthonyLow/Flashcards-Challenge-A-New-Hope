## Sinatra Injection Report DBC 8/23/2015

I have been doing some research on XSS script injection after being inspired by Alex's talk on graduation day.  I learned the most from playing the [XSS game](http://xss-game.appspot.com/) that he linked to us in his follow up email.  Basic Javascript injection seems to involve looking through source code for various vulnerablities that can be exploited through input fields in the website.  If you know that input given to a certain field (your name for example) will show up later in the site (perhaps on a profile page) than you can try to inject Javascript by typing in a sequence of characters that will confuse the server into interpreting those characters as part of the DOM.  This can be done through the clever use some crucial symbols such as quotes and ">". 

Since this process is actually rather and potentially catastrophic it is crucial that developers find ways to properly escape the input they are taking in.  This means scanning the strings that have been inputted and removing and suspicious characters.

In the interest of furthering my understanding of web security I decided to try to send a javascript alert to our flashcards website through one of the text fields.  I decided to target the "card question" field as it is a good example of a text field that takes input and then immediately displays it.  


######Here is our create_card.erb

```
  <div class="container">
  	<hr>
  	<h4>Card #<%= "#{index + 1}" %>:</h4>
  <label for="question">Question:</label>
  <input style="border: solid" class="input" name="cards[<%= card_id %>[question]]" type="text" value="<%= card.question %>" size="63" />
  <label for="answer">Answer:</label>
  <input style="border: solid" class="input" name="cards[<%= card_id %>[answer]]" type="text" value="<%= card.answer %>" size="63" />
</div>

```

As you can see the card question attribute is both inputted and displayed by this form.  I figured that through some carefuly placed "%>" and quotes I could get and injection to work.  Through trial and error I discovered I could inject an image into the DOM by inputting the following:

```
""%>"<img src="imgsrc.gif" />
```

So when the server renders the form the html ends up looking like this:
 <input style="border: solid" class="input" name="cards[<%= card_id %>[question]]" type="text" value="<%= ""%>"<img src="imgsrc.gif" /> %>" size="63" />
```

Browsers are incredibly forgiving and are able to ignore what looks like broken HTML surrounding the image and the image gets displayed in lieu of a string.

From there it was a simple matter of using an "onerror" attribute to inject a Javascript alert like so:

```
""%>"<img src="somebrokensrc.gif" onerror=alert("test") />
```
Inputting nonsense into the source attribute will cause the Javascript in the onerror attribute to be called.  This essentially means that I can inject my own functions into the server and do who knows what.

The remedy would be properly escaping the input.  Before displaying the question we could delete all characters such as "%", ">", or quotes.