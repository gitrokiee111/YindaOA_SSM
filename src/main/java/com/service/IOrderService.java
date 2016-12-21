package com.service;

import java.util.List;

import com.model.YoOrder;

public interface IOrderService {

	/**
	 * 获取所有部门
	 * @return
	 */
	List<YoOrder> getDepartment();
	
	
	/**
	 * 根据部门获取项目
	 * @param department
	 * @return
	 */
	List<YoOrder> getProjectByDepartment(String department);
	
	
	
	
	public   List<YoOrder> getOrderList(YoOrder order);
	
}
