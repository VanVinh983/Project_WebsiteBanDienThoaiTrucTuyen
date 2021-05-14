package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.Role;

public interface RoleService {
	public Role findRoleByName(String theRoleName);
	public List<Role> getListRole();
}
