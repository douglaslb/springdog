package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import br.com.fiap.model.DogModel;

public class DogRepository {
	private static DogRepository instance;
	
	private static Map<Long, DogModel> dogs;
	
	public static DogRepository getInstance() {
		if (instance == null) {
			instance = new DogRepository();
		}
		return instance;
	}
	
	private DogRepository() {
		dogs = new HashMap<Long, DogModel>();
		
		dogs.put(1L, new DogModel(1L, "João Henrique", "11122233344", "Tobias Malaquias", "Pitbull", 8, "História do cachorro do João"));
		dogs.put(2L, new DogModel(2L, "Douglas Lima", "11122233345", "Michael Jordan", "Labrador", 2, "História do cachorro do Douglas"));
		dogs.put(3L, new DogModel(3L, "Pedro Coutinho", "11122233346", "Peter Pan", "Beagle", 4, "História do cachorro do Pedro"));
		dogs.put(4L, new DogModel(4L, "Yuri Villanova", "11122233347", "Chapolin", "Poodle", 5, "História do cachorro do Yuri"));
		dogs.put(5L, new DogModel(5L, "João Vitor", "11122233348", "Batman", "Chihuahua", 1, "História do cachorro do JV"));
	}
	
	public ArrayList<DogModel> findAll() {
		return new ArrayList<DogModel>(dogs.values());
	}
	
	public DogModel findById(Long id) {
		return dogs.get(id);
	}
	
	public void save(DogModel dog) {
		Long newId = (long) (dogs.size() + 1);
		dog.setId(newId);
		dogs.put(newId, dog);
	}
	
	public void update(DogModel dog) {
		dogs.put(dog.getId(), dog);
	}
	
	public void delete(Long id) {
		dogs.remove(id);
	}
	
}
