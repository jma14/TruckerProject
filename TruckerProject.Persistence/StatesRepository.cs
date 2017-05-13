using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.Persistence
{
    public class StatesRepository
    {
        public static List<string> GetStates()
        {
            return Enum.GetNames(typeof(DTO.Enums.States)).ToList();
        }
    }
}
