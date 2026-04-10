using admin as service from '../../srv/admin-service';
annotate service.Supplier with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Suppliercode}',
                Value : supplierCode,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Suppliername}',
                Value : supplierName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Contactperson}',
                Value : contactPerson,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Phone}',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>City}',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Status1}',
                Value : status,
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
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'supplierCode',
            Value : supplierCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'supplierName',
            Value : supplierName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contactPerson',
            Value : contactPerson,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
    ],
);

