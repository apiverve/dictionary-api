# Dictionary API - Ruby Gem

Dictionary looks up word definitions for any given term. It returns every recorded meaning as a text list with a total definition count for e-readers, vocabulary builders, and writing assistants.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_dictionary'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_dictionary
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_dictionary'

# Initialize the client
client = APIVerve::Dictionary::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ word: "apple" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ word: "apple" })
  puts response["data"]
rescue APIVerve::Dictionary::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Dictionary::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Dictionary::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "apple",
    "definitionCount": 5,
    "definitions": [
      "The fleshy pome or fruit of a rosaceous tree (Pyrus malus) cultivated in numberless varieties in the temperate zones. Note: The European crab apple is supposed to be the original kind, from which all others have sprung.",
      "(bot.)  Any tree genus Pyrus which has the stalk sunken into the base of the fruit; an apple tree.",
      "Any fruit or other vegetable production resembling, or supposed to resemble, the apple; as, apple of love, or love apple (a tomato), balsam apple, egg apple, oak apple.",
      "Anything round like an apple; as, an apple of gold. Note: Apple is used either adjectively or in combination; as, apple paper or apple-paper, apple-shaped, apple blossom, apple dumpling, apple pudding. Apple blight, an aphid which injures apple trees. See Blight, n. -- Apple borer (Zoöl.), a coleopterous insect (Saperda candida or bivittata), the larva of which bores into the trunk of the apple tree and pear tree. -- Apple brandy, brandy made from apples. -- Apple butter, a sauce made of apples stewed down in cider. Bartlett. -- Apple corer, an instrument for removing the cores from apples. -- Apple fly (Zoöl.), any dipterous insect, the larva of which burrows in apples. Apple flies belong to the genera Drosophila and Trypeta. -- Apple midge (Zoöl.) a small dipterous insect (Sciara mali), the larva of which bores in apples. -- Apple of the eye, the pupil. -- Apple of discord, a subject of contention and envy, so called from the mythological golden apple, inscribed \"For the fairest,\" which was thrown into an assembly of the gods by Eris, the goddess of discord. It was contended for by Juno, Minerva, and Venus, and was adjudged to the latter. -- Apple of love, or Love apple, the tomato (Lycopersicum esculentum). -- Apple of Peru, a large coarse herb (Nicandra physaloides) bearing pale blue flowers, and a bladderlike fruit inclosing a dry berry. -- Apples of Sodom, a fruit described by ancient writers as externally of air appearance but dissolving into smoke and ashes plucked; Dead Sea apples. The name is often given to the fruit of Solanum Sodomæum, a prickly shrub with fruit not unlike a small yellow tomato. -- Apple sauce, stewed apples. [U. S.] -- Apple snail or Apple shell (Zoöl.), a fresh-water, operculated, spiral shell of the genus Ampullaria. -- Apple tart, a tart containing apples. -- Apple tree, a tree naturally bears apples. See Apple,",
      "-- Apple wine, cider. -- Apple worm (Zoöl.), the larva of a small moth (Carpocapsa pomonella) which burrows in the interior of apples. See Codling moth. -- Dead Sea Apple. (a) pl. Apples of Sodom. Also Fig. \"To seek the Dead Sea apples of politics.\" S. B. Griffin. (b) A kind of gallnut coming from Arabia. See Gallnut.  To grow like an apple; to bear apples. Holland."
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/dictionary?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/dictionary?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/dictionary?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
