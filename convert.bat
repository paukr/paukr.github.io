i_view64.exe "%~1" /advancedbatch /resize=(576,0) /resample /aspectratio /jpgq=90 /convert="%~2_S.JPG"
i_view64.exe "%~1" /advancedbatch /resize=(768,0) /resample /aspectratio /jpgq=90 /convert="%~2_M.JPG"
i_view64.exe "%~1" /advancedbatch /resize=(992,0) /resample /aspectratio /jpgq=90 /convert="%~2_L.JPG"