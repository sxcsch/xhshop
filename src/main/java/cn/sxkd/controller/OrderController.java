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


import cn.sxkd.base.BaseController;
import cn.sxkd.entity.Page;
import cn.sxkd.entity.TUser;
import cn.sxkd.service.GoodsService;
import cn.sxkd.service.OrderService;
import cn.sxkd.tool.AppUtil;
import cn.sxkd.tool.PageData;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


/** 
 * 类名称：OrderController
 */
@Controller
@RequestMapping(value="/order")
public class OrderController extends BaseController {
	
	@Resource(name="orderService")
	private OrderService orderService;

	@Resource(name="goodsService")
	private GoodsService goodsService;

	@RequestMapping("/showCart")
	public ModelAndView showCart(){
		ModelAndView mv = this.getModelAndView();
		try {
			mv.setViewName("cart");
			TUser tUser = getSessionUserName();
			if (tUser!=null){
                PageData pageData = new PageData();
                pageData.put("user_id",tUser.getUsersid());
                List<PageData> list = orderService.findOrderByUserId(pageData);
                if (list!=null&&list.size()>0){
					for (PageData p:list){
						pageData.put("id",p.get("goods_id"));
						PageData good = goodsService.findById(pageData);
						p.put("good",good);
					}
				}

                mv.addObject("list",list);
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/showMyOrder")
	public ModelAndView showMyOrder(){
		ModelAndView mv = this.getModelAndView();
		try {
			mv.setViewName("my-order-comment");
//			TUser tUser = getSessionUserName();
//			if (tUser!=null){
//				PageData pageData = new PageData();
//				pageData.put("user_id",tUser.getUsersid());
//				List<PageData> list = orderService.findOrderByUserId(pageData);
//				if (list!=null&&list.size()>0){
//					for (PageData p:list){
//						pageData.put("id",p.get("goods_id"));
//						PageData good = goodsService.findById(pageData);
//						p.put("good",good);
//					}
//				}
//
//				mv.addObject("list",list);
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增Order");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ORDER_ID", this.get32UUID());	//主键
		pd.put("ID", "");	//主键
		pd.put("NUM", "");	//订单编号
		pd.put("USER_ID", "");	//用户ID
		pd.put("TYPE_ID", "");	//类型ID
		pd.put("STATUS", "");	//状态
		pd.put("PRICE", "");	//价格
		pd.put("GOODS_ID", "");	//商品ID
		orderService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Order");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			orderService.delete(pd);
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
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改Order");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		orderService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Order");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = orderService.list(page);	//列出Order列表
			mv.setViewName("order/order_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增Order页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("order/order_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
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
		logBefore(logger, "去修改Order页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = orderService.findById(pd);	//根据ID读取
			mv.setViewName("orderController/order/order_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
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
		logBefore(logger, "批量删除Order");
		PageData pd = new PageData();
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				orderService.deleteAll(ArrayDATA_IDS);
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
