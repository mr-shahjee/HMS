using System;
using System.Collections.Generic;

namespace PracticeCrud.NewModels;

public partial class CompanyDetail
{
    public int CompanyId { get; set; }

    public string CompanyName { get; set; }

    public string City { get; set; }

    public string State { get; set; }

    public string Owner { get; set; }

    public int? PublishYear { get; set; }
}
