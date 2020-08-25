using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrModel.Manage
{
   public class PrState
    {
        public int Id { get; set; }
        [Display(Name = "State Name")]
        public string State { get; set; }
        [Display(Name = "City Name")]
        public List<PrCity> objCity { get; set; }
    }
}
