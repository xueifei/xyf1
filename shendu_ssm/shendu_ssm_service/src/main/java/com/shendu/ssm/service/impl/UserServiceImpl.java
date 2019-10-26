package com.shendu.ssm.service.impl;

import com.shendu.ssm.domain.User;
import com.shendu.ssm.mapper.IUserDao;
import com.shendu.ssm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	IUserDao userDao;

	@Override
	public User getUserByName(String name) {
		return userDao.getUserByName(name);
	}

	@Override
	public List<User> listUser() {
		return userDao.selectUserList();
	}

	@Override
	public void addUser(User user) {
		userDao.insertUser(user);
	}

	@Override
	public void deleteUser(long id) {
		userDao.deleteUser(id);
	}

	@Override
	public User getUserByID(long id) {
		return userDao.getUserByID(id);
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
}