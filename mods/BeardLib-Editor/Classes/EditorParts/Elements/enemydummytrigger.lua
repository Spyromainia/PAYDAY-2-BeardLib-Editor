EditorEnemyDummyTrigger = EditorEnemyDummyTrigger or class(MissionScriptEditor)
function EditorEnemyDummyTrigger:init(unit)
	self.super.init(self, unit)
end

function EditorEnemyDummyTrigger:create_element()
	self.super.create_element(self)
	self._element.class = "ElementEnemyDummyTrigger"
	self._element.values.event = "death"
	self._element.values.elements = {}	
end

function EditorEnemyDummyTrigger:_build_panel()
	self:_create_panel()
	self:_build_element_list("elements", {"ElementSpawnEnemyDummy", "ElementSpawnEnemyGroup", "ElementSpawnCivilian", "ElementSpawnCivilianGroup"})
	local options = {
		"alerted",
		"death",
		"killshot",
		"fled",
		"spawn",
		"panic",
		"weapons_hot",
		"tied",
		"anim_act_01",
		"anim_act_02",
		"anim_act_03",
		"anim_act_04",
		"anim_act_05",
		"anim_act_06",
		"anim_act_07",
		"anim_act_08",
		"anim_act_09",
		"anim_act_10"
	}
	self:_build_value_combobox("event", options)
end
