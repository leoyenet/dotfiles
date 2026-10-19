-- Shared workspaces can move freely between monitors.
-- Keep the four app workspaces available without pinning them.
for i = 1, 4 do
    hl.workspace_rule({ workspace = tostring(i), persistent = true })
end
