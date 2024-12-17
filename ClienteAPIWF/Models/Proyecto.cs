using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace ClienteAPIWF.Models
{
    public class Proyecto
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("technology")]
        public string Technology { get; set; }

        [JsonProperty("created_at")]
        public string CreatedAt { get; set; }

        public DateTimeOffset GetCreatedAtDateTime()
        {
            return DateTimeOffset.ParseExact(CreatedAt, "yyyy-MM-ddTHH:mm:ss.fffffffZ", CultureInfo.InvariantCulture, DateTimeStyles.AssumeUniversal);
        }
    }
}