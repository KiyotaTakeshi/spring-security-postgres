package com.kiyotakeshi.springBootSecurityPostgres.repository;

import com.kiyotakeshi.springBootSecurityPostgres.models.Role;
import com.kiyotakeshi.springBootSecurityPostgres.models.RoleEnum;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(RoleEnum name);
}
