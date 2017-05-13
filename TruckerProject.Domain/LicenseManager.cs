﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TruckerProject.Domain
{
    public class LicenseManager
    {
        public static List<DTO.LicenseDTO> GetLicenses()
        {
            return Persistence.LicenseRepository.GetLicenses();
        }
    }
}
