@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view of Book Issue'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_BOOK_IS as projection on ZI_BOOK_IS
{
    key Issueid,
    Bookid,
    Studname,
    Issuedate,
    /* Associations */
    _issue : redirected to parent ZC_BOOK_EN
}
