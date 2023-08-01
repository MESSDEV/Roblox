print("Dialog script enabled")
-- path to quest character dialogue
local quest_npc_dialog = game.Workspace.QuestNPC.FalseHead.Dialog
-- function to check the player's answers
function StartDialogue(player, choice)
  if (choice == quest_npc_dialog.DialogChoice1) then
    print("Dialogue 1 running")
  end
end
quest_npc_dialog.DialogChoiceSelected:Connect(StartDialogue)
