package hello;
import org.springframework.data.repository.CrudRepository;
import hello.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {
	   Role findByName(String name);
}
