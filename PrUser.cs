using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrModel.Account
{
   public class PrUser
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "please Enter userName")]
        [Display(Name = "User Name")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Please Enter Password")]
        [DataType(DataType.Password)]
        [MinLength(5, ErrorMessage = "please minimum 5 charactor")]
        public string Password { get; set; }
        [Required(ErrorMessage = "Please Enter Email")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [Required(ErrorMessage = "Please Enter Date of Birth")]
        [Display(Name = " Date Of Birth")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime Birthdate { get; set; }

        public string Department { get; set; }

        public string Address { get; set; }
        public string Cityname { get; set; }
        public string State { get; set; }
        public string Gender { get; set; }
        public int Sallary { get; set; }
        public bool IsActive { get; set; }
    }
}
