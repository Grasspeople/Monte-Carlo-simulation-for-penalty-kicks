function aveprob = task7_2(N,R)
    totalprob = 0;
    for i = 1:R
        [prob,~,~] = simulation_Gaussian(N);
        totalprob = totalprob + prob;
    end
    aveprob = totalprob/R;
end