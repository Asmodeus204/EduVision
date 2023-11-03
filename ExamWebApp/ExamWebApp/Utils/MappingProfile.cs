using AutoMapper;
using ExamWebApp.Models;
using System.IO.Packaging;

namespace ExamWebApp.Utils
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<StudentAnswer, StudentAnswerCloned>();
        }
    }

}
