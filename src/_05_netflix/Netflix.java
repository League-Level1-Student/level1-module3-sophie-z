package _05_netflix;

public class Netflix {
public static void main(String[] args) {
	Movie FarFromHome = new Movie("FarFromHome", 10);
	Movie Endgame = new Movie("Endgame", 10);
	Movie Ragnarok = new Movie("Ragnarok", 10);
	Movie Homecoming = new Movie("Homecoming", 10);
	Movie InfinityWar = new Movie("InfinityWar", 9);
	FarFromHome.getTicketPrice();
	NetflixQueue Marvel = new NetflixQueue();
	Marvel.addMovie(FarFromHome);
	Marvel.addMovie(Endgame);
	Marvel.addMovie(Ragnarok);
	Marvel.addMovie(Homecoming);
	Marvel.addMovie(InfinityWar);
	System.out.println(FarFromHome);
	System.out.println(Endgame);
	System.out.println(Ragnarok);
	System.out.println(Homecoming);
	System.out.println(InfinityWar);
	Marvel.sortMoviesByRating();
	System.out.println("The best movie is " + Marvel.getBestMovie());
	System.out.println("The second best movie is " + Marvel.;
}
}
