using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Dictionary
{
    /// <summary>
    /// Query options for the Dictionary API
    /// </summary>
    public class DictionaryQueryOptions
    {
        /// <summary>
        /// The word or phrase to define (e.g., apple, ice cream, give up). Case-insensitive; inflected forms resolve to their base word
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }
    }
}
