using BookstoreService as service from '../../srv/service';
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'genre',
                Value : genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'publishedAt',
                Value : publishedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
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
            Label : 'Books Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'genre',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'publishedAt',
            Value : publishedAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Ücret',
            Value : price,
        },
    ],
    UI.SelectionFields : [
        price,
        ID,
    ],
);

annotate service.Books with {
    Author @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Author_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate service.Books with {
    price @Common.Label : 'price'
};

annotate service.Books with {
    ID @Common.Label : 'ID'
};

