@EndUserText.label: 'Project Viw for Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity yi_tr_travel_processor as projection on yi_tr_travel
{
@ObjectModel.text.element: [ 'Description' ]
    key TravelId,
    @ObjectModel.text.element: [ 'AgencyName' ]
    @Consumption.valueHelpDefinition: [{
    entity.name: '/DMO/I_Agency',
    entity.element: 'AgencyID'
    }]
    AgencyId,
    @Semantics.text: true
    _Agency.Name as AgencyName,
    @ObjectModel.text.element: [ 'CustomerName' ]
    @Consumption.valueHelpDefinition: [{
    entity.name: '/DMO/I_Customer',
    entity.element: 'CustomerID'
    }]
    CustomerId,
    @Semantics.text: true
    _Customer.LastName as CustomerName,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    @Semantics.text: true
    Description,
       @Consumption.valueHelpDefinition: [{
    entity.name: '/DMO/I_Overall_Status_VH',
    entity.element: 'OverallStatus'
    }]
    @ObjectModel.text.element: [ 'StatusText' ]
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    @Semantics.text: true
    StatusText,
    Criticality,
    /* Associations */
    _Agency,
    _Booking: redirected to composition child  YI_TR_booking_PROCESSOR,
    _Attachment: redirected to composition child  YI_TR_ATTCHMENT_PROCESSOR,
    _Currency,
    _Customer,
    _OverallStatus,
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:YCL_TR_VE_CALC'
    @EndUserText.label: 'CO2 TAX'
    virtual CO2Tax: abap.int4,
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:YCL_TR_VE_CALC'
    @EndUserText.label: 'Week Day'
    virtual dayOfTheFlight: abap.char(9)

}
