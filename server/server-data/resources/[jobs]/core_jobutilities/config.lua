Config = {

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Centro De Trabajos',

MarkerSprite = 27,
MarkerColor = {66, 135, 245},
MarkerSize = 1.1,

LocationsJobCenters = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	{coords = vector3(-537.287, -217.421, 37.65), blip = true}
},

--Boss menu locations
BossMenuLocations = {

	{coords = vector3(462.134, -985.571, 30.728), job = "police", label = "Policia"},
	{coords = vector3(-339.638, -157.388, 44.587), job = "mechanic", label = "Mecanicos"},
	{coords = vector3(-435.281, -318.169, 34.911), job = "ambulance", label = "Hospital"},
	{coords = vector3(-1196.401, -901.934, 13.886), job = "burguerking", label = "Burguer King"},
	{coords = vector3(-432.93, 6006.211, 36.996), job = "swatt", label = "Swatt"}

},



--Boss menu users by grade name and their permissions
BossMenuUsers = {

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['recruit'] = {canWithdraw = false, canDeposit = true, canHire = false, canRank = false, canFire = false, canBonus = false}

},


DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/
	
	{job = 'miner', label = "Minero", icon = "fas fa-gem", description = "Es hora de recolectar materiales y venderlos."},
	{job = 'garbage', label = "Basurero", icon = "fas fa-truck", description = "Ayuda a mantener la ciudad limpia."},
	{job = 'busdriver', label = "Microbusero", icon = "fas fa-bus", description = "Lleva a su destino a los pasajeros."},
	{job = 'trucker', label = "Camionero", icon = "fas fa-truck", description = "Deja la carga en su destino."},
	{job = 'taxi', label = "Taxista", icon = "fas fa-taxi", description = "Recoge a tus pasajeros y llevos a su destino."}

},


Text = {

	['open_jobcenter_ui_hologram'] = '[~b~E~w~] Abrir Centro de Empleo',
	['promoted'] = 'Has sido ascendido',
	['promoted_other'] = 'The han asencido en otro trabajo!',
	['fired'] = 'Has sido despedido',
	['fired_other'] = 'Has sido contratado',
	['hired'] = 'You have been hired',
	['bossmenu_hologram'] = '[~b~E~w~] Abrir menu de jefe',
	['action_success'] = 'Accion exitosa',
	['action_unsuccessful'] = 'Accion fallida',
	['cant_access_bossmenu'] = 'No puedes acceder al menu del jefe',
	['insufficent_balance'] = 'Saldo insuficiente',
	['bonus_given'] = 'Se ha otorgado la bonificacion!',
	['bonus_recieved'] = 'Recibiste un bono! +$'

}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('error', msg)

end
