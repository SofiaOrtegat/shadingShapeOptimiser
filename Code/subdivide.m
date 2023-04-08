function result = subdivide(p1, p2, p3, subdivider)
result = [];
    for i = subdivider:subdivider:1
        for j = 0:1/(1/subdivider-(1-i)/subdiv