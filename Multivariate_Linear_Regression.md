# Multiple features
# Feature Scaling
여러개의 feature가 있고 scale이 비슷하다면 경사하강법은 더 빠르게 수렴할 수 있다.  
보통은 feature scaling을 할 때 -1 <= xi <= 1 범위에 들어가게 scaling 한다.  
x := x - mean(x) / range(x) or standard deviation
