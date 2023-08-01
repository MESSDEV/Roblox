game.workspace.Crystal.Parent = game.ServerStorage
print("Dialog script enabled")
-- path to quest character dialogue
local quest_npc_dialog = game.Workspace.QuestNPC.FalseHead.Dialog
-- function to check the player's answers
function StartDialogue(player, choice)
    if (choice == quest_npc_dialog.DialogChoice1) then
        print("Dialogue 1 running")
    elseif (choice == quest_npc_dialog.DialogChoice2) then
        print("Dialogue 2 running")
    elseif (choice == quest_npc_dialog.DialogChoice2.DialogChoice3) then
        game.ServerStorage.Crystal.Parent = game.Workspace
        print("Take the crystal")
    end
end
quest_npc_dialog.DialogChoiceSelected:Connect(StartDialogue)
