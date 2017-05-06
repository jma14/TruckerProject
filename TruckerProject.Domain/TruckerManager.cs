using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.Domain
{
    public class TruckerManager
    {
        public static void CreateTrucker(DTO.TruckerDTO truckerDTO)
        {
            Persistence.TruckerRepository.CreateTrucker(truckerDTO);
        }

        public static List<DTO.TruckerDTO> GetTruckers()
        {
            return Persistence.TruckerRepository.GetTruckers();
        }
    }
}
