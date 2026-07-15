@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Book Entries'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_BOOKEn as select from zsed_book
composition [0..*] of ZI_BOOK_IS as _book
{
    key bookid as Bookid,
    bookname as Bookname,
    author as Author,
    available as Available,
    _book
}
