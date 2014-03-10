reorder.clones <-
function(U, PTrue, Mu, P, allPerms){
  ## Finds and returns the permutation of Mu that best matches U.
  ## along with the corresponding permutation of P
  perms <- best.match(m1=U,m2=Mu, perms=allPerms)
  reordered <- list()
  reordered[["Mu"]] <- Mu[,perms[[1]]]
  reordered[["P"]] <- P[perms[[1]],]
  return( reordered )
}
