package cn.sxkd.controller;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import cn.sxkd.base.BaseController;
import cn.sxkd.entity.Page;
import cn.sxkd.service.GoodsService;
import cn.sxkd.service.TypeService;
import cn.sxkd.tool.AppUtil;
import cn.sxkd.tool.PageData;
import cn.sxkd.tool.Pic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创建时间：2018-05-06
 */
@Controller
@RequestMapping(value="/goods")
public class GoodsController extends BaseController {
	
	@Resource(name="goodsService")
	private GoodsService goodsService;

	@Autowired
	private TypeService typeService;

	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增Goods页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("goods");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(HttpServletRequest request,
					 @RequestParam(value="picture",required=false) MultipartFile picture,
					 @RequestParam(value="name",required=false) String name,
					 @RequestParam(value="des",required=false) String des,
					 @RequestParam(value="type",required=false) Integer type,
					 @RequestParam(value="price",required=false) Double price,
					 @RequestParam(value="status",required=false) Integer status
	) throws Exception{
		ModelAndView mv = this.getModelAndView();
		String pic = Pic.pics(picture.getBytes());
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("name",name);
		pd.put("des",des);
		pd.put("type",type);
		pd.put("price",price);
		pd.put("status",status);
		pd.put("picture",pic.getBytes());
		goodsService.save(pd);
		mv.setViewName("index");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Goods");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			goodsService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	@ResponseBody
	public Object edit() throws Exception{
		logBefore(logger, "修改Goods");
		PageData pd = new PageData();
		pd = this.getPageData();
		goodsService.edit(pd);
		return "success";
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Goods");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = goodsService.list(page);	//列出Goods列表
			mv.setViewName("goods/goods_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 类型
	 */
	@RequestMapping(value="/searchType")
	public ModelAndView searchType(Page page){
		logBefore(logger, "搜索");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
			pd = this.getPageData();
		page.setPd(pd);
		try {
			List<PageData> good = goodsService.findByGoodType(page);
			mv.setViewName("search");
			mv.addObject("pd", pd);
			mv.addObject("pds", good);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}

	/**
	 * ID
	 */
	@RequestMapping(value="/searchId")
	public ModelAndView searchType(){
		logBefore(logger, "搜索");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			PageData good = goodsService.findById(pd);
			PageData p = new PageData();
			p.put("sortid",good.get("type").toString());
			PageData type = typeService.findTypeById(p);
			good.put("type",type);
			mv.setViewName("item");
			mv.addObject("pd", pd);
			mv.addObject("pds", good);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改Goods页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = goodsService.findById(pd);	//根据ID读取
			mv.setViewName("goods");
			mv.addObject("goods", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除Goods");
		PageData pd = new PageData();
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				goodsService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	

	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
