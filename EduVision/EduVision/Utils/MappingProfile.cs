using AutoMapper;
using EduVision.Models;
using System.IO.Packaging;

namespace EduVision.Utils
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<StudentAnswer, StudentAnswerCloned>();
        }
    }

}
