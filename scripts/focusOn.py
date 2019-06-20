import i3, sys
# get a list of workspaces

for workspace in i3.get_workspaces():
    # get the workspace tree data
    workspace_tree = i3.filter(num=workspace.get('num'))
    # get a list of existing leaf windows in that workspace
    for window in i3.filter(workspace_tree, nodes=[]):
        # do something useful here
        if window.get('name').startswith(sys.argv[1]):
        	i3.msg('command','[con_id="{}"] focus'.format(window.get('id')))
        	print("1")
        	sys.exit(1)
print("0")
sys.exit(0)