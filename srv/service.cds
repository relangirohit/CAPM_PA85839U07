using { salesterritory as salesterritory } from './external/salesterritory';

using { employeebasicdata as employeebasicdata } from './external/employeebasicdata';

service Main{
    entity SalesTerritoryCollection as projection on salesterritory.SalesTerritoryCollection;
    entity EmployeeBasicDataEntity as projection on employeebasicdata.BusinessUserCollection{
        EmployeeID,
        CompanyName,
    };
}