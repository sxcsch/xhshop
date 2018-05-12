package cn.sxkd.service;

import java.util.List;

import javax.annotation.Resource;

import cn.sxkd.dao.DaoSupport;
import cn.sxkd.entity.Page;
import cn.sxkd.tool.PageData;
import org.springframework.stereotype.Service;


@Service("goodsService")
public class GoodsService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("GoodsMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("GoodsMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("GoodsMapper.edit", pd);
	}

	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("GoodsMapper.datalistPage", page);
	}
	/*
	*类型列表
	*/
	public List<PageData> findByGoodType(Page pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodsMapper.findByGoodTypelistPage", pd);
	}
	/*
        *类型列表
        */
	public List<PageData> findByGoodNameLike(Page pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodsMapper.findByGoodNameLikelistPage", pd);
	}
	/*
	*类型列表
	*/
	public List<PageData> findByGoodTypes(Page pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodsMapper.findByGoodTypeslistPage", pd);
	}
	/*
	*类型全部列表
	*/
	public List<PageData> findByGoodTypeAll(Page pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodsMapper.findByGoodTypeAlllistPage", pd);
	}
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodsMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("GoodsMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("GoodsMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

