
function Enormalized = row_normalize(E)
	total_counts = sum(E,2);
	tc_tiled = repmat(total_counts,1,size(E,2))
	included = all(E < tc_tiled * 0.05, 1)	
	tc_include = sum(E(:,included),2)
	tc_tiled = repmat(tc_include,1,size(E,2))+.000001
	Enormalized = E ./ tc_tiled * mean(total_counts)
end