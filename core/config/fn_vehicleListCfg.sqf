#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "new_shop_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
		
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
		
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};
	
	case "med_car_1":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
	};
	
	case "med_car_2":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
	};
	
	case "med_air_1": {
		_return = [
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "med_air_2": {
		_return = [
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "kart_car_1":
	{
		_return = 
		[
			["C_Kart_01_Vrana_F",100000],
			["C_Kart_01_Red_F",100000],
			["C_Kart_01_Fuel_F",100000],
			["C_Kart_01_Blu_F",100000]
		];
	};
	
	case "kart_car_2":
	{
		_return = 
		[
			["C_Kart_01_Vrana_F",100000],
			["C_Kart_01_Red_F",100000],
			["C_Kart_01_Fuel_F",100000],
			["C_Kart_01_Blu_F",100000]
		];
	}; 
	
	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["I_G_Offroad_01_F",65000]
		];
	}; 

	case "civ_car_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["I_G_Offroad_01_F",65000]
		];
	};

	case "civ_car_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["I_G_Offroad_01_F",65000]
		];
	}; 

	case "civ_car_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["I_G_Offroad_01_F",65000]
		];
	}; 

	case "donator_1":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["I_G_Offroad_01_F",45000],
			["O_Heli_Light_02_unarmed_F",600000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",50000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
		};
	};

	case "donator_2":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["I_G_Offroad_01_F",45000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
			
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",50000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			
		};
	};

	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};

	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["B_Truck_01_covered_F",400000]
		];	
	};

	case "civ_truck_2":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["B_Truck_01_covered_F",400000]
		];	
	};

	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",1000000],
			["O_Truck_03_transport_F",1000000],
			["O_Truck_03_covered_F",1350000],			
			["O_Truck_03_ammo_F",1500000],
			["B_Heli_Light_01_F",325000],
			["O_Heli_Light_02_unarmed_F",850000]
			//["O_MRAP_02_hmg_F",6000000]
		];

		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",1500000]];
		
		};
	};

	case "reb_v_2":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",1000000],
			["O_Truck_03_transport_F",1000000],
			["O_Truck_03_covered_F",1350000],			
			["O_Truck_03_ammo_F",1500000],
			["B_Heli_Light_01_F",325000],
			["O_Heli_Light_02_unarmed_F",850000]
			//["O_MRAP_02_hmg_F",6000000]

		];

		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",1500000]];
			


		};
	};

	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",13000]
		];
	};

	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
		_return set[count _return,
		["O_MRAP_02_F",1000000]];
	};

	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",325000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",850000]];
	};

	case "cop_car_1":
{
  _return set[count _return,
  ["C_Offroad_01_F",5000]];
  _return set[count _return,
  ["C_Hatchback_01_F",5000]];
  
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
		["C_SUV_01_F",20000]];
		};
  
			if(__GETC__(life_coplevel) > 4) then
			{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",10000]];
			}; 
  
				if(__GETC__(life_coplevel) > 5) then
				{
				_return set[count _return,
				["B_MRAP_01_hmg_F",750000]];
				}; 
};

	case "cop_car_2":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
	};

	case "cop_car_3":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		_return set[count _return,
        ["C_Hatchback_01_sport_F",10000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
	};

	case "cop_car_5":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
	};

	case "fed_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
	};

	case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};

	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};

	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};

	case "cop_air_1":
	{
			if(__GETC__(life_coplevel) > 1) then
			{
				_return set[count _return,
				["B_Heli_Light_01_F",75000]];
			};
			
			if(__GETC__(life_coplevel) > 2) then
			{
				_return set[count _return,
				["I_Heli_light_03_unarmed_F",150000]];
			};

			if(__GETC__(life_coplevel) > 5) then
			{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			};
	};

	case "cop_air_2":
	{
			if(__GETC__(life_coplevel) > 1) then
			{
				_return set[count _return,
				["B_Heli_Light_01_F",75000]];
			};
			
			if(__GETC__(life_coplevel) > 2) then
			{
				_return set[count _return,
				["I_Heli_light_03_unarmed_F",150000]];
			};

			if(__GETC__(life_coplevel) > 5) then
			{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			};
	}; 

	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};

	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000]
		];
	};

	case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",50000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
};

_return;
