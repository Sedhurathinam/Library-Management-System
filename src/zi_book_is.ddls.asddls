@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Book Issue'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_BOOK_IS as select from zsed_book_is
association to parent ZI_BOOKEn as _issue 
on $projection.Bookid = _issue.Bookid
{
    key issueid as Issueid,
    bookid as Bookid,
    studname as Studname,
    issuedate as Issuedate,
    _issue
}
