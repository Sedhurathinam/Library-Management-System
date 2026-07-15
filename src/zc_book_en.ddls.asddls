@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view of Book Entries'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_BOOK_EN
provider contract transactional_query
 as projection on ZI_BOOKEn
{
    key Bookid,
    Bookname,
    Author,
    Available,
    /* Associations */
    _book : redirected to composition child ZC_BOOK_IS
    
}
