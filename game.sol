pragma solidity ^0.4.0;
/*
Etheron
It is just a game.
----------
1 Aug 2018
iDler
*/

contract Game
{

	address public Owner;
	mapping(address => Player) public Players;

	uint public Version;
	uint public GameEnd;

	struct City
	{
		string	city_name;
		uint	city_num;
		uint	city_id;
		uint	city_status;
	}

	struct Building
	{
		string	building_name;
		uint	building_num;
		uint	building_lv;
		uint	building_function;
	}

	struct Hero
	{
		string	hero_name;
		uint	hero_id;
		uint	hero_lv;
		uint	hero_skill;
	}

	uint public food;
	uint public wood;
	uint public iron;
	uint public stone;

	function Authorize(address Player)
	{
		require(msg.sender == Owner);
		require(Players[Player] == null);
	}

	//Start the Game
	function StartGame()
	{
		Owner = msg.sender;
		GameEnd = 0;
	}

	//End the Game
	function EndGame()
	{
		require(msg.sender == Owner);
		GameEnd = 1;
	}
}