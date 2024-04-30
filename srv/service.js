const cds = require('@sap/cds');
const{query} = require('express');
class Main extends cds.ApplicationService {
    async init() {
        const { SalesTerritoryCollection } = this.entities;
        const { EmployeeBasicDataEntity } = this.entities;
        const SaleTer = await cds.connect.to('salesterritory');
        const EmpData = await cds.connect.to('employeebasicdata');
        this.on('READ', SalesTerritoryCollection, async (req, res) => {
            return await SaleTer.tx(req).run(req.query);
        });
        this.on('READ', EmployeeBasicDataEntity, async (req, res) => {
            return await EmpData.tx(req).run(req.query);
        });
    }
}

module.exports = { Main };