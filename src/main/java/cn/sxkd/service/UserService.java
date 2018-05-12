package cn.sxkd.service;

import cn.sxkd.dao.DaoSupport;
import cn.sxkd.entity.TUser;
import cn.sxkd.tool.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/5/5 0005.
 */
@Service
public class UserService {

    @Resource(name = "daoSupport")
    private DaoSupport daoSupport;
    /*
     * 保存用户信息
     */
    public void saveRegister(PageData pd)throws Exception{
        TUser tUser = new TUser();
        tUser.setUsersid(Integer.parseInt(pd.get("usersid").toString()));
        tUser.setSortname(pd.get("sortname").toString());
        tUser.setUsersaddrss(pd.get("usersaddrss").toString());
        tUser.setUserpass(pd.get("userpass").toString());
        tUser.setUsersemail(pd.get("usersemail").toString());
        tUser.setUserspassquestion(pd.get("userspassquestion").toString());
        tUser.setUsersphone(pd.get("usersphone").toString());
        tUser.setUserstruename(pd.get("userstruename").toString());
        tUser.setUserspassreply(pd.get("userspassreply").toString());
        tUser.setUsersrepass(pd.get("usersrepass").toString());
        daoSupport.save("TUserMapper.insertSelective",tUser);
    }

    /*
     * 通过用户ID来寻找用户信息
     */
    public TUser findUserById(PageData pd)throws Exception {
//        TUser tUser = new TUser();
//        tUser.setSortname(pd.get("sortname").toString());
        return (TUser)daoSupport.findForObject("TUserMapper.selectByPrimaryKey", pd);
    }
    /*
         * 通过用户ID来寻找用户信息
         */
    public TUser selectByPrimaryKeyId(PageData pd)throws Exception {
//        TUser tUser = new TUser();
//        tUser.setSortname(pd.get("sortname").toString());
        return (TUser)daoSupport.findForObject("TUserMapper.selectByPrimaryKeyId", pd);
    }
    /*
     * 通过用户ID来寻找用户信息
     */
    public PageData findUserByIdPd(PageData pd)throws Exception {
        return (PageData)daoSupport.findForObject("TUserMapper.selectUserByKey", pd);
    }

    /*
	* 所有用户
	*/
    public List<PageData> findUserByList(PageData pd)throws Exception {
        return (List<PageData>)daoSupport.findForList("TUserMapper.selectList", pd);
    }

    /*
     * 通过用户ID来修改用户信息
     */
    public void updateUserById(PageData pd)throws Exception {
//        TUser tUser = new TUser();
//        tUser.setUsersid(Integer.parseInt(pd.get("usersid").toString()));
//        tUser.setSortname(pd.get("sortname").toString());
//        tUser.setUsersaddrss(pd.get("usersaddrss").toString());
//        tUser.setUserpass(pd.get("userpass").toString());
//        tUser.setUsersemail(pd.get("usersemail").toString());
//        tUser.setUserspassquestion(pd.get("userspassquestion").toString());
//        tUser.setUsersphone(pd.get("usersphone").toString());
//        tUser.setUserstruename(pd.get("userstruename").toString());
//        tUser.setUserspassreply(pd.get("userspassreply").toString());
//        tUser.setUsersrepass(pd.get("usersrepass").toString());
        daoSupport.update("TUserMapper.updateByPrimaryKeySelective", pd);
    }

    public void delUserById(PageData pd)throws Exception {
        daoSupport.delete("TUserMapper.delUserByID",pd);
    }
}
