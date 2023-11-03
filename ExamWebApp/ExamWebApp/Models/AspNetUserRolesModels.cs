using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ExamWebApp.Models
{
    public class AspNetUserRoles : IdentityUserRole<string>
    {
    }
}