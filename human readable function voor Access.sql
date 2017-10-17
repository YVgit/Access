Human readable : 
IIf(
	Log((Sum([storage].[capacity])))/Log(1024)>=3,
	Round((Sum([storage].[capacity])/(1024*1024*1024)),2) & " GiB",
	IIf(
		(Log((Sum([storage].[capacity])))/Log(1024))>=2,
		Round((Sum([storage].[capacity])/(1024*1024)),2) & " MiB",
		IIf(
			(Log((Sum([storage].[capacity])))/Log(1024))>=1,
			Round((Sum([storage].[capacity])/1024),2) & " KiB",
			Round((Sum([storage].[capacity])),2) & " Bytes"
		)
	)
)