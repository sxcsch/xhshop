package cn.sxkd.service;

import java.util.List;

import javax.annotation.Resource;

import cn.sxkd.dao.DaoSupport;
import cn.sxkd.entity.Page;
import cn.sxkd.tool.PageData;
import org.springframework.stereotype.Service;



@Service("leavelanguageService")
public class LeavelanguageService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("LeavelanguageMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("LeavelanguageMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("LeavelanguageMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("LeavelanguageMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("LeavelanguageMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("LeavelanguageMapper.findById", pd);
	}

}

