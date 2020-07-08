target += normal_lpdf(ac_scale_raw | 0, 1);

{
int i = 1;
for (proc in 1:ac_nproc) { 
    target += normal_lpdf(ac_noise[i:(i+ac_ntime[proc]-1)] | 0, ac_scale[proc]);
    i += ac_ntime[proc];
}
}
