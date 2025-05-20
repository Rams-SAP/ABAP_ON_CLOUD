@EndUserText.label: 'My travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YI_TR_ATTCHMENT_PROCESSOR as projection on YI_TR_ATTACHMENT
{
key TravelId,
key Id,
Memo,
Attachment,
Filename,
Filetype,
LastChangedAt,
LocalCreatedAt,
LocalCreatedBy,
LocalLastChangedBy,
LocalLastChangedAt,
_Travel: redirected to parent yi_tr_travel_processor

}
