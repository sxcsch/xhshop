package cn.sxkd.service;

import java.util.List;

import javax.annotation.Resource;

import cn.sxkd.dao.DaoSupport;
import cn.sxkd.entity.Page;
import cn.sxkd.tool.PageData;
import org.springframework.stereotype.Service;



@Service("orderService")
public class OrderService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("OrderMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("OrderMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("OrderMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("OrderMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("OrderMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("OrderMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("OrderMapper.deleteAll", ArrayDATA_IDS);
	}

	/*
	*用户购物车(全部)
	*/
	public List<PageData> findOrderByUserId(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("OrderMapper.findOrderByUserId", pd);
	}
}

