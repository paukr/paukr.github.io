i_view64.exe "%1\*.JPG" /advancedbatch /resize=(576,0) /resample /aspectratio /jpgq=90 /convert="%2\$N_S.JPG"
i_view64.exe "%1\*.JPG" /advancedbatch /resize=(768,0) /resample /aspectratio /jpgq=90 /convert="%2\$N_M.JPG"
i_view64.exe "%1\*.JPG" /advancedbatch /resize=(992,0) /resample /aspectratio /jpgq=90 /convert="%2\$N_L.JPG"
i_view64.exe "%1\*.JPG" /advancedbatch /resize=(1500,0) /resample /aspectratio /jpgq=90 /convert="%2\$N.JPG"
dir "%1" /b