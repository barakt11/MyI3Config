import i3, sys

for workspace in i3.get_workspaces():
    workspace_tree = i3.filter(num=workspace.get('num'))
    for window in i3.filter(workspace_tree, nodes=[]):
        if window.get('name').startswith(sys.argv[1]):
        	i3.msg('command','[con_id="{}"] focus'.format(window.get('id')))
        	print("1")
        	sys.exit(1)
print("0")
sys.exit(0)
