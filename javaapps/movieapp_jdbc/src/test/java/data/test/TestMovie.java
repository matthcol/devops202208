package data.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import data.Movie;

class TestMovie {

	@Test
	void testConstructorDefault() {
		var movie = new Movie();
		assertNull(movie.getId());
		assertNull(movie.getTitle());
		assertNull(movie.getYear());
	}

}
