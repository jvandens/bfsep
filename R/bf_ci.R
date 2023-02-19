#' Calculate prediction intervals
#'
#' Creates a table with credible intervals of baseflow prediction for a series of discrete baseflow values.
#'
#' @param bf_mod_out bfmodout
#' @param return_type type of return
#'
#' @return a dataframe
#' @export
#'
bf_ci <- function(bf_mod_out, return_type = "ci") {
  tmp.error=(bf_mod_out$Qsim.L3-bf_mod_out$Qob.L3)/bf_mod_out$Qsim.L3
  tmp.error[abs(tmp.error==-Inf)]=1
  tmp.error[bf_mod_out$DirectRunoff.L3>0]=NA
  tmp.q=bf_mod_out$Qsim.L3
  tmp.q[bf_mod_out$DirectRunoff.L3>0]=NA
  qnts=quantile(tmp.q,p=seq(0.05,0.95,0.05),na.rm=TRUE)

  ci_table=data.frame(array(dim=c(0,5)))
  for(x in 2:18) {y=(tmp.q>qnts[x-1]) & (tmp.q<qnts[x+1])
  ci_table=rbind(ci_table,c(qnts[x],quantile(tmp.error[y],p=c(0.05,0.5,0.95),na.rm=TRUE)))}
  dimnames(ci_table)[[2]]=c('Qsim.L3.T','FrEr0.05','FrEr0.50','FrEr0.95')
  qnt=rep(NA,length(tmp.q))
  for(t in 1:length(tmp.q)){if(bf_mod_out$DirectRunoff[t] %in% 0) {qnt[t]=match(TRUE,bf_mod_out$Qsim.L3[t]<(qnts[1:18]+qnts[2:19])/2)}}
  ci=data.frame(bf_mod_out$Qsim.L3*(1-ci_table$FrEr0.95[qnt]),bf_mod_out$Qsim.L3*(1-ci_table$FrEr0.05[qnt]))
  dimnames(ci)[[2]]=c('CB0.05','CB0.95')

  if(return_type == "ci") {
    return(ci)
  } else {
    return(ci_table)
  }
 # assign('ci_table',ci_table,,envir=.GlobalEnv)
 # assign('ci',ci,envir=.GlobalEnv)
}
