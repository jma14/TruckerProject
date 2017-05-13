using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.Domain
{
    public class StatesManager
    {
        public static List<string> GetStates()
        {
            return Persistence.StatesRepository.GetStates();
        }
    }
}
