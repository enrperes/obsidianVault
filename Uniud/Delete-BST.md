##### Deletion strategy: 
*Three strategies:* 
1. **$\Large z$ has no children** 
	- remove it by modifying its parent and replacing z with `NIL`
2. **$\Large z$ has one child** 
	- elevate that child to take $z$'s position in the tree by modifying $z$' parent to replace $z$ by $z$' child
3. ** $\Large z$ has two children** 
	- find the successor $y$ which must belong to z's right subtree, move $y$ to take z's position in the tree. The rest of z's original right subtree is y's new right subtree. Because $y$ is z's successor it cannot have a left child. It matters whether $y$ is in z's right child. 


```c
Delete(T,z){
	if(z.left = NIL || z.right = NIL){
		x = z
	} else {
		x = BST_successor(z)
	}
	if (x.left != NIL){
		v = x.left 
	} else {
		v = x.right
	}
	if (v |= NIL){
		v.parent = x.parent
	}
	if (x.parent != NIL){
		if (x = x.parent.left){
			x.parent.left = v
		}
	} else {
		x.parent.right = v
	} else {
		T.root = v
	}
	if (x != z){
	z.key = x.key
	}
	return T
}
```

