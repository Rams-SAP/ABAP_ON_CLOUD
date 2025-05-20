@EndUserText.label: 'Booking approval'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YI_TR_booking_approver as projection on yi_tr_booking
{
key TravelId,
key BookingId,
BookingDate,
CustomerId,
CarrierId,
ConnectionId,
FlightDate,
FlightPrice,
CurrencyCode,
@Consumption.valueHelpDefinition: [{ 
entity.name: '/DMO/I_Booking_Status_VH',
entity.element: 'BookingStatus'
 }]
BookingStatus,
LastChangedAt,
/* Associations */
_BookingStatus,
_Carrier,
_Connection,
_Customer,
_Travel: redirected to parent YI_TR_TRAVEL_APPROVER


}
