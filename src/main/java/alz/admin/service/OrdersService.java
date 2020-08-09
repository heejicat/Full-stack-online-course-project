package alz.admin.service;

import java.util.List;

import alz.admin.domain.OrderCriteria;
import alz.order.domain.OrderAllDTO;
import alz.order.domain.OrderDTO;

public interface OrdersService {

	public List<OrderAllDTO> orderList();
	
	public List<OrderAllDTO> orderListPaging(OrderCriteria cri);
	
	public int getTotal(OrderCriteria cri);
	
	public void stateChange(OrderDTO order);
}
