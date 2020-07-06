vector[ac_nproc] ac_scale;
vector[ac_q] ac_beta;

ac_scale = ac_scale_raw * ac_prior_scale;

i = 1;
for (l in 1:ac_nproc) { // this treats ac terms as a random walk (for now)
    slice = i:(i+ac_nperiods[l]-1);
    ac_beta[slice] = cumulative_sum(ac_noise[slice]);
    i += ac_nperiods[l];
}