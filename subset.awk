BEGIN{
 i=1
 while(( getline line<subsetFile) > 0 ) {
     subset[i] = line
     i++
  }	
last=1	
}

{
   if((NR-1)==subset[last]){
       print 
       last++
   }
}
