![[Pasted image 20240304134409.png#invert]]

```python
class Node:
  def __init__(self, value, left=None, right=None):
      self.value = value
      self.left = left
      self.right = right

def inputTree(tokens, pos=0):
  assert len(tokens) > pos
  tok = tokens[pos]

  if tok == "null":
      return None, pos + 1  # Return None for null and move to the next position

  value = int(tok)
  left, pos = inputTree(tokens, pos + 1)  # Process left subtree
  right, pos = inputTree(tokens, pos)     # Process right subtree

  root = Node(value, left, right)
  return root, pos  # Return the root and updated position

def inorder(node):
  if node:
      inorder(node.left)
      print(node.value, end=" ")
      inorder(node.right)

# Example usage

# tokens = ["7", "5", "8", "null", "null", "4", "null", "null", "3", "null", "6", "null", "null"]

# another example

tokens = ["1", "2", "3", "null", "null", "4", "null", "5", "null", "null", "6", "null", "null"]
root, _ = inputTree(tokens)  # Build tree from Polish notation
inorder(root)  # Output in-order traversal

```

> [!bug]  **This works but need to fix the input syntax** ⬆️
 

> [!done]  **This should solve it ⬇️** 
 > 

```python
class Node:
  def __init__(self, value, left=None, right=None):
      self.value = value
      self.left = left
      self.right = right

def inputTree(tokens, pos=0):
  assert len(tokens) > pos
  tok = tokens[pos]

  if tok == "null":
      return None, pos + 1

  value = int(tok)
  left, pos = inputTree(tokens, pos + 1)
  right, pos = inputTree(tokens, pos)

  root = Node(value, left, right)
  return root, pos

def inorder(node):
  if node:
      inorder(node.left)
      print(node.value, end=" ")
      inorder(node.right)

# Example usage
text_input = "7 5 8 null null 4 null null 3 null 6 null null"
tokens = text_input.split() 
root, _ = inputTree(tokens)  
inorder(root) 

```