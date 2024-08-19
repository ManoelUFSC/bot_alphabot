unit TTURaffle;

interface
 type
    TRaffle = class

    private
    Fslug: String;

    public
      constructor Create(pSlug: string);
      property slug: String read Fslug write Fslug;
    End;
implementation

{ TRaffle }

constructor TRaffle.Create(pSlug: string);
begin
  slug := pSlug;
end;

end.
