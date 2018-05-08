package cn.sxkd.entity;

public class TUser {
    private Integer usersid;

    private String sortname;

    private String userpass;

    private String usersrepass;

    private String userspassquestion;

    private String userspassreply;

    private String userstruename;

    private String usersaddrss;

    private String usersphone;

    private String usersemail;

    public Integer getUsersid() {
        return usersid;
    }

    public void setUsersid(Integer usersid) {
        this.usersid = usersid;
    }

    public String getSortname() {
        return sortname;
    }

    public void setSortname(String sortname) {
        this.sortname = sortname == null ? null : sortname.trim();
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass == null ? null : userpass.trim();
    }

    public String getUsersrepass() {
        return usersrepass;
    }

    public void setUsersrepass(String usersrepass) {
        this.usersrepass = usersrepass == null ? null : usersrepass.trim();
    }

    public String getUserspassquestion() {
        return userspassquestion;
    }

    public void setUserspassquestion(String userspassquestion) {
        this.userspassquestion = userspassquestion == null ? null : userspassquestion.trim();
    }

    public String getUserspassreply() {
        return userspassreply;
    }

    public void setUserspassreply(String userspassreply) {
        this.userspassreply = userspassreply == null ? null : userspassreply.trim();
    }

    public String getUserstruename() {
        return userstruename;
    }

    public void setUserstruename(String userstruename) {
        this.userstruename = userstruename == null ? null : userstruename.trim();
    }

    public String getUsersaddrss() {
        return usersaddrss;
    }

    public void setUsersaddrss(String usersaddrss) {
        this.usersaddrss = usersaddrss == null ? null : usersaddrss.trim();
    }

    public String getUsersphone() {
        return usersphone;
    }

    public void setUsersphone(String usersphone) {
        this.usersphone = usersphone == null ? null : usersphone.trim();
    }

    public String getUsersemail() {
        return usersemail;
    }

    public void setUsersemail(String usersemail) {
        this.usersemail = usersemail == null ? null : usersemail.trim();
    }

    @Override
    public String toString() {
        return "TUser{" +
                "usersid=" + usersid +
                ", sortname='" + sortname + '\'' +
                ", userpass='" + userpass + '\'' +
                ", usersrepass='" + usersrepass + '\'' +
                ", userspassquestion='" + userspassquestion + '\'' +
                ", userspassreply='" + userspassreply + '\'' +
                ", userstruename='" + userstruename + '\'' +
                ", usersaddrss='" + usersaddrss + '\'' +
                ", usersphone='" + usersphone + '\'' +
                ", usersemail='" + usersemail + '\'' +
                '}';
    }
}