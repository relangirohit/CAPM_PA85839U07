using Main as service from '../../srv/service';

annotate service.SalesTerritoryCollection{
    EmployeeResponsible @Common : { ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'EmployeeBasicDataEntity',
        Parameters : [{
            $Type: 'Common.ValueListParameterInOut',
            LocalDataProperty : EmployeeResponsible,
            ValueListProperty : 'EmployeeID'
        },{
            $Type : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'CompanyName'
        }]
    },
    }
}

annotate service.SalesTerritoryCollection with @(

    UI.HeaderInfo :{TypeName : 'ObjectInfo',
    TypeNamePlural : 'ObjectInfos',},

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ObjectID',
                Value : ObjectID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Id',
                Value : Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ParentID',
                Value : ParentID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmployeeResponsible',
                Value : EmployeeResponsible,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HierarchyLevelCode',
                Value : HierarchyLevelCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HierarchyLevelCodeText',
                Value : HierarchyLevelCodeText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EntityLastChangedOn',
                Value : EntityLastChangedOn,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ETag',
                Value : ETag,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.SelectionFields : [EmployeeResponsible],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ObjectID',
            Value : ObjectID,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '10rem'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Id',
            Value : Id,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '10rem'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '10rem'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'ParentID',
            Value : ParentID,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '10rem'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmployeeResponsible',
            Value : EmployeeResponsible,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '10rem'
            },
        },
    ],
);
