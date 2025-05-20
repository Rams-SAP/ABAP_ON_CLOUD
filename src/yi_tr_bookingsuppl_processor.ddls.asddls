@EndUserText.label: 'My travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YI_TR_BOOKINGSUPPL_PROCESSOR as projection on yi_tr_booksuppl
{
key TravelId,
key BookingId,
key BookingSupplementId,
SupplementId,
Price,
CurrencyCode,
LastChangedAt,
/* Associations */
_Booking: redirected to parent YI_TR_booking_PROCESSOR,
//_Product,
//_SupplementText,
_Travel: redirected to yi_tr_travel_processor
}
