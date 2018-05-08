package cn.sxkd.controller;

import cn.sxkd.base.BaseController;
import cn.sxkd.entity.TUser;
import cn.sxkd.service.UserService;
import cn.sxkd.tool.AppUtil;
import cn.sxkd.tool.PageData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/5 0005.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{

    @Autowired
    private UserService userService;

    @RequestMapping("/showLogin")
    public ModelAndView index(){
        ModelAndView mv = this.getModelAndView();
        TUser user = getSessionUserName();
        if (user!=null) {
            mv.addObject("user", user);
            mv.setViewName("index");
        }else {
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping("/showMyUser")
    public ModelAndView user(){
        ModelAndView mv = this.getModelAndView();
        TUser user = getSessionUserName();
        if (user!=null) {
            mv.addObject("user", user);
            mv.setViewName("my-info");
        }else {
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping("/showRegister")
    public ModelAndView showRegister(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("register");
        return mv;
    }

    @RequestMapping("/showEdit")
    public ModelAndView showEdit(){
        PageData pd = this.getPageData();
        ModelAndView mv = this.getModelAndView();
        try{
            if (pd.get("id")!=null||!pd.get("id").equals("")){
                mv.setViewName("");
                mv.addObject("user",userService.findUserById(pd));
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
    @ResponseBody
    public Object register(){
        PageData pd = this.getPageData();
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            userService.saveRegister(pd);
            map.put("status","200");
            map.put("msg","登录成功");
        }catch (Exception e){
            logger.error(e);
        }
        return map;
    }

    /*
    修改
     */
    @RequestMapping("/update")
    public void update(){
        PageData pd = this.getPageData();
        try{
            userService.updateUserById(pd);
            TUser tUser= userService.findUserById(pd);
            setSession("user",tUser);
        }catch (Exception e){
            logger.error(e);
        }
    }

    /*
    寻找Id用户
     */
    @RequestMapping("/selectById")
    @ResponseBody
    public TUser selectById(){
        PageData pd = this.getPageData();
        try {
            TUser pds = userService.findUserById(pd);
            return pds;
        }catch (Exception e){
            logger.error(e);
        }
        return null;
    }

    @RequestMapping("/login")
    @ResponseBody
    public Object login(){
        PageData pd = new PageData();
        pd = this.getPageData();
        Map<String,Object> map = new HashMap<String,Object>();
        try{
                TUser user = userService.findUserById(pd);
                String userpass = user.getUserpass();
                if (userpass.equals(pd.get("userpass").toString())){
                    setSession("user",user);
                    map.put("status","200");
                    map.put("msg","登录成功");
                    map.put("user",user);
                }else{
                    map.put("status","500");
                    map.put("msg","用户名或密码错误");
                }
        }catch (Exception e){
            logger.error(e);
        }
        return map;
    }
}
