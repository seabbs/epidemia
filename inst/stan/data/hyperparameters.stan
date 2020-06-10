  // hyperparameter values are set to 0 if there is no prior
  vector<lower=0>[K] prior_scale;
  real<lower=0> prior_scale_for_intercept;
  vector[K] prior_mean;
  vector<lower=0>[K] prior_shape;
  vector[K] prior_shift;
  real prior_mean_for_intercept;
  vector<lower=0>[K] prior_df;
  real<lower=0> prior_df_for_intercept;
  real<lower=0> global_prior_df;     // for hs priors only
  real<lower=0> global_prior_scale;  // for hs priors only
  real<lower=0> slab_df;     // for hs prior only
  real<lower=0> slab_scale;  // for hs prior only
  int<lower=2> num_normals[prior_dist == 7 ? K : 0];
