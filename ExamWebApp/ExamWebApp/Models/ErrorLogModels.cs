using ExamWebApp.Data;
using ExamWebApp.Utils;
using Microsoft.Extensions.Logging;
using System;
using System.ComponentModel.DataAnnotations;

namespace ExamWebApp.Models
{
    public class ErrorLog
    {
        [Key]
        public string Id { get; set; }
        public string UserId { get; set; }
        public string ErrorMessage { get; set; }
        public string ErrorDetails { get; set; }
        public DateTime? ErrorDate { get; set; }
    }


}
