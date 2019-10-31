package com.shendu.ssm.controller;

import com.shendu.ssm.domain.Permission;
import com.shendu.ssm.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

/**
 * 后台管理 权限
 */
@Controller
@RequestMapping("admin")
public class PermissionController {

	@Autowired
	IPermissionService permissionService;

	@RequestMapping("listPermission")
	public String list(Model model) {
		List<Permission> ps = permissionService.getPermissionList();
		model.addAttribute("ps", ps);
		return "listPermission";
	}

	@RequestMapping("editPermission")
	public String list(Model model, long id) {
		Permission permission = permissionService.getPermissionByID(id);
		model.addAttribute("permission", permission);
		return "editPermission";
	}

	@RequestMapping("updatePermission")
	public String update(Permission permission) {
		permissionService.updatePermission(permission);
		return "redirect:listPermission";
	}

	@RequestMapping("addPermission")
	public String list(Permission permission) {
		System.out.println(permission.getName());
		System.out.println(permission.getDesc());
		permissionService.addPermission(permission);
		return "redirect:listPermission";
	}

	@RequestMapping("addPermission1")
	public String addPermission1() {

		return "addPermission";
	}

	@RequestMapping("deletePermission")
	public String delete(long id) {
		permissionService.deletePermission(id);
		return "redirect:listPermission";
	}

}