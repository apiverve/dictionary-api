# [Dictionary API](https://dictionary.apiverve.com?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Dictionary is a simple tool for getting word definitions. It returns the definition a word.

The Dictionary API provides a simple, reliable way to integrate dictionary functionality into your applications. Built for developers who need production-ready dictionary capabilities without the complexity of building from scratch.

**[View API Details →](https://dictionary.apiverve.com?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://dictionary.apiverve.com?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/dictionary)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.Dictionary)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-dictionary/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_dictionary)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/dictionary)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_dictionary)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callDictionaryAPI() {
    try {
        const params = new URLSearchParams({
            word: 'apple'
        });

        const response = await fetch(`https://api.apiverve.com/v1/dictionary?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callDictionaryAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/dictionary?word=apple" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/dictionary
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/dictionary) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.Dictionary
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.Dictionary) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-dictionary
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-dictionary/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_dictionary
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_dictionary) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/dictionary
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/dictionary) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_dictionary
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_dictionary) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:dictionary-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/dictionary-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Dictionary API](https://dictionary.apiverve.com?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/dictionary](https://docs.apiverve.com/ref/dictionary)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Dictionary API is commonly used for:

- **Web Applications** - Add dictionary features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with dictionary capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Dictionary API:

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

---

## Support & Community

- 🏠 **API Home**: [Dictionary API](https://dictionary.apiverve.com?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
