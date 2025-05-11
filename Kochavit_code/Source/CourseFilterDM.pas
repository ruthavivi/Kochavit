unit CourseFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmCourseFilter = class(TdmGnrlFilter)
    qrFilterStartD: TDateField;
    qrFilterEndD: TDateField;
    qrFilterOrganize: TStringField;
    qrFilterCourse: TStringField;
    qrFilterShemD: TStringField;
    qrFilterZeut: TStringField;
    qrFilterShem: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCourseFilter: TdmCourseFilter;

implementation

{$R *.dfm}

end.
