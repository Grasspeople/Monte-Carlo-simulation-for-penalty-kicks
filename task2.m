function aveprob = task2(N,R)
    totalprob = 0;
    for i = 1:R
        [prob,~,~] = simulation_Uniform(N);
        totalprob = totalprob + prob;
    end
    aveprob = totalprob/R;
end