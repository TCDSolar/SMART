;plot a chain code (string 'x1,y1,x2,y2,x3,y3,x1,y1') in the HEK format
pro ar_plot_chain,chain,over=over,_extra=_extra


chainarr=str_sep(chain,',')
nchain=n_elements(chainarr)
chainxy=reform(chainarr,2,nchain/2.)


if keyword_set(over) then $
	oplot,chainxy[0,*],chainxy[1,*],ps=-4,_extra=_extra $
else $
	plot,chainxy[0,*],chainxy[1,*],ps=-4,_extra=_extra











end