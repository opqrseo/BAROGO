package edu.multi.kdigital;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.multi.kdigital.dto.UserDto;
import edu.multi.kdigital.service.UserService;
 
@ExtendWith(SpringExtension.class)
@SpringBootTest
public class MultiprojectApplicationTests {

	@Autowired
    private UserService uService;

}