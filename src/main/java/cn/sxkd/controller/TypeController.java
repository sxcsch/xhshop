package cn.sxkd.controller;

import cn.sxkd.base.BaseController;
import cn.sxkd.service.TypeService;
import cn.sxkd.service.UserService;
import cn.sxkd.tool.PageData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2018/5/5 0005.
 */
@Controller
@RequestMapping("/type")
public class TypeController extends BaseController{

    @Autowired
    private TypeService typeService;

    @RequestMapping("/showType")
    public ModelAndView index(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("login");
        return mv;
    }

    @RequestMapping("/showEdit")
    public ModelAndView showEdit(){
        PageData pd = this.getPageData();
        ModelAndView mv = this.getModelAndView();
        try{
            if (pd.get("id")!=null||!pd.get("id").equals("")){
                mv.setViewName("");
                mv.addObject("type",typeService.findTypeById(pd));
            }else{
                mv.setViewName("");
            }
        }catch (Exception e){
            logger.error(e);
        }
        return mv;
    }

    /*
    保存
     */
    @RequestMapping("/register")
    public void register(){
        PageData pd = this.getPageData();
        try{
            typeService.saveRegister(pd);
        }catch (Exception e){
            logger.error(e);
        }
    }

    /*
    修改
     */
    @RequestMapping("/update")
    public void update(){
        PageData pd = this.getPageData();
        try{
            typeService.updateTypeById(pd);
        }catch (Exception e){
            logger.error(e);
        }
    }

    /*
    寻找Id类型
     */
    @RequestMapping("/selectById")
    @ResponseBody
    public PageData selectById(){
        PageData pd = this.getPageData();
        try {
            PageData pds = typeService.findTypeById(pd);
            return pds;
        }catch (Exception e){
            logger.error(e);
        }
        return null;
    }

}
