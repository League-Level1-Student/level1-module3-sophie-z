package _06_gridworld;

import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
public static void main(String[] args) {
	World world = new World();
	world.show();
	
	Bug bug1 = new Bug();
	bug1.setColor(Color.blue);
	bug1.turn();
	bug1.turn();
	Bug bug2 = new Bug();
	
	Flower flower1 = new Flower();
	Flower flower2 = new Flower();
	
	for(int i = 0; i<100; i++) {
		world.add(world.getRandomEmptyLocation(), new Flower());
	}
	
	Location location1 = new Location(1, 1);
	Location location2 = new Location(1, 0);
	Location location3 = new Location(1, 2);
	Location location4 = new Location(5, 5);
	
	
	world.add(location1, bug1);
	world.add(location2, flower1);
	world.add(location3, flower2);
	world.add(location4, bug2);
}
}
