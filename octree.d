module octree;

struct tree_node {
	int index;
	tree_node *sibling;
	tree_node *child;
}

struct interval {
	int start, end;

	@property int size() { return end - start; }

	// 0 sized interval not allowed
	invariant { assert(end > start); }
}

// Build a octree from a sorted, "aligned" morton intervals
tree_node *build_index(interval[] input) {
	tree_node[] stack = [ tree_node(0, null, null) ];

	foreach(i; 1..input.length) {
		// 1. fill all missing tree nodes between
		//    i-th interval and the top of the stack
		// 2. merge mergable nodes in the stack
		// 3. create new node for the i-th interval
		// 4. push onto stack
	}
	return null;
}
