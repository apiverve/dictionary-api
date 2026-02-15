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
        /// The word for which you want to get the definition (e.g., apple)
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }
    }
}
