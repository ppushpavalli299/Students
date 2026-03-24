namespace ec.masters;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Student : cuid, managed {
    name        : String(50);
    firstName   : String(50);
    lastName    : String(50) @mandatory;
    gender      : String(50);
    dateOfBirth : Date;
    addresses   : Composition of many studentAddress
                      on addresses.parent = $self;
}

entity studentAddress : cuid, managed {
    streetName   : String(50);
    region       : String(50);
    country      : String(50);
    postalCode   : String(50);
    phoneNumber  : String(50);
    EmailAddress : String(50);
    parent       : Association to Student;
    details      : Composition of many studentDetail
                       on details.parent = $self;
}

entity studentDetail : cuid, managed {
    description  : String(100);
    parent       : Association to studentAddress;
}