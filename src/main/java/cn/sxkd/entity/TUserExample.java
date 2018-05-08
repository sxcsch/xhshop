package cn.sxkd.entity;

import java.util.ArrayList;
import java.util.List;

public class TUserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TUserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andUsersidIsNull() {
            addCriterion("usersId is null");
            return (Criteria) this;
        }

        public Criteria andUsersidIsNotNull() {
            addCriterion("usersId is not null");
            return (Criteria) this;
        }

        public Criteria andUsersidEqualTo(Integer value) {
            addCriterion("usersId =", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidNotEqualTo(Integer value) {
            addCriterion("usersId <>", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidGreaterThan(Integer value) {
            addCriterion("usersId >", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidGreaterThanOrEqualTo(Integer value) {
            addCriterion("usersId >=", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidLessThan(Integer value) {
            addCriterion("usersId <", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidLessThanOrEqualTo(Integer value) {
            addCriterion("usersId <=", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidIn(List<Integer> values) {
            addCriterion("usersId in", values, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidNotIn(List<Integer> values) {
            addCriterion("usersId not in", values, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidBetween(Integer value1, Integer value2) {
            addCriterion("usersId between", value1, value2, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidNotBetween(Integer value1, Integer value2) {
            addCriterion("usersId not between", value1, value2, "usersid");
            return (Criteria) this;
        }

        public Criteria andSortnameIsNull() {
            addCriterion("sortName is null");
            return (Criteria) this;
        }

        public Criteria andSortnameIsNotNull() {
            addCriterion("sortName is not null");
            return (Criteria) this;
        }

        public Criteria andSortnameEqualTo(String value) {
            addCriterion("sortName =", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameNotEqualTo(String value) {
            addCriterion("sortName <>", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameGreaterThan(String value) {
            addCriterion("sortName >", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameGreaterThanOrEqualTo(String value) {
            addCriterion("sortName >=", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameLessThan(String value) {
            addCriterion("sortName <", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameLessThanOrEqualTo(String value) {
            addCriterion("sortName <=", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameLike(String value) {
            addCriterion("sortName like", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameNotLike(String value) {
            addCriterion("sortName not like", value, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameIn(List<String> values) {
            addCriterion("sortName in", values, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameNotIn(List<String> values) {
            addCriterion("sortName not in", values, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameBetween(String value1, String value2) {
            addCriterion("sortName between", value1, value2, "sortname");
            return (Criteria) this;
        }

        public Criteria andSortnameNotBetween(String value1, String value2) {
            addCriterion("sortName not between", value1, value2, "sortname");
            return (Criteria) this;
        }

        public Criteria andUserpassIsNull() {
            addCriterion("userPass is null");
            return (Criteria) this;
        }

        public Criteria andUserpassIsNotNull() {
            addCriterion("userPass is not null");
            return (Criteria) this;
        }

        public Criteria andUserpassEqualTo(String value) {
            addCriterion("userPass =", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotEqualTo(String value) {
            addCriterion("userPass <>", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassGreaterThan(String value) {
            addCriterion("userPass >", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassGreaterThanOrEqualTo(String value) {
            addCriterion("userPass >=", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassLessThan(String value) {
            addCriterion("userPass <", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassLessThanOrEqualTo(String value) {
            addCriterion("userPass <=", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassLike(String value) {
            addCriterion("userPass like", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotLike(String value) {
            addCriterion("userPass not like", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassIn(List<String> values) {
            addCriterion("userPass in", values, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotIn(List<String> values) {
            addCriterion("userPass not in", values, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassBetween(String value1, String value2) {
            addCriterion("userPass between", value1, value2, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotBetween(String value1, String value2) {
            addCriterion("userPass not between", value1, value2, "userpass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassIsNull() {
            addCriterion("usersRePass is null");
            return (Criteria) this;
        }

        public Criteria andUsersrepassIsNotNull() {
            addCriterion("usersRePass is not null");
            return (Criteria) this;
        }

        public Criteria andUsersrepassEqualTo(String value) {
            addCriterion("usersRePass =", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassNotEqualTo(String value) {
            addCriterion("usersRePass <>", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassGreaterThan(String value) {
            addCriterion("usersRePass >", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassGreaterThanOrEqualTo(String value) {
            addCriterion("usersRePass >=", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassLessThan(String value) {
            addCriterion("usersRePass <", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassLessThanOrEqualTo(String value) {
            addCriterion("usersRePass <=", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassLike(String value) {
            addCriterion("usersRePass like", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassNotLike(String value) {
            addCriterion("usersRePass not like", value, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassIn(List<String> values) {
            addCriterion("usersRePass in", values, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassNotIn(List<String> values) {
            addCriterion("usersRePass not in", values, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassBetween(String value1, String value2) {
            addCriterion("usersRePass between", value1, value2, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUsersrepassNotBetween(String value1, String value2) {
            addCriterion("usersRePass not between", value1, value2, "usersrepass");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionIsNull() {
            addCriterion("usersPassQuestion is null");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionIsNotNull() {
            addCriterion("usersPassQuestion is not null");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionEqualTo(String value) {
            addCriterion("usersPassQuestion =", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionNotEqualTo(String value) {
            addCriterion("usersPassQuestion <>", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionGreaterThan(String value) {
            addCriterion("usersPassQuestion >", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionGreaterThanOrEqualTo(String value) {
            addCriterion("usersPassQuestion >=", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionLessThan(String value) {
            addCriterion("usersPassQuestion <", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionLessThanOrEqualTo(String value) {
            addCriterion("usersPassQuestion <=", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionLike(String value) {
            addCriterion("usersPassQuestion like", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionNotLike(String value) {
            addCriterion("usersPassQuestion not like", value, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionIn(List<String> values) {
            addCriterion("usersPassQuestion in", values, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionNotIn(List<String> values) {
            addCriterion("usersPassQuestion not in", values, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionBetween(String value1, String value2) {
            addCriterion("usersPassQuestion between", value1, value2, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassquestionNotBetween(String value1, String value2) {
            addCriterion("usersPassQuestion not between", value1, value2, "userspassquestion");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyIsNull() {
            addCriterion("usersPassReply is null");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyIsNotNull() {
            addCriterion("usersPassReply is not null");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyEqualTo(String value) {
            addCriterion("usersPassReply =", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyNotEqualTo(String value) {
            addCriterion("usersPassReply <>", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyGreaterThan(String value) {
            addCriterion("usersPassReply >", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyGreaterThanOrEqualTo(String value) {
            addCriterion("usersPassReply >=", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyLessThan(String value) {
            addCriterion("usersPassReply <", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyLessThanOrEqualTo(String value) {
            addCriterion("usersPassReply <=", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyLike(String value) {
            addCriterion("usersPassReply like", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyNotLike(String value) {
            addCriterion("usersPassReply not like", value, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyIn(List<String> values) {
            addCriterion("usersPassReply in", values, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyNotIn(List<String> values) {
            addCriterion("usersPassReply not in", values, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyBetween(String value1, String value2) {
            addCriterion("usersPassReply between", value1, value2, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserspassreplyNotBetween(String value1, String value2) {
            addCriterion("usersPassReply not between", value1, value2, "userspassreply");
            return (Criteria) this;
        }

        public Criteria andUserstruenameIsNull() {
            addCriterion("usersTrueName is null");
            return (Criteria) this;
        }

        public Criteria andUserstruenameIsNotNull() {
            addCriterion("usersTrueName is not null");
            return (Criteria) this;
        }

        public Criteria andUserstruenameEqualTo(String value) {
            addCriterion("usersTrueName =", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameNotEqualTo(String value) {
            addCriterion("usersTrueName <>", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameGreaterThan(String value) {
            addCriterion("usersTrueName >", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameGreaterThanOrEqualTo(String value) {
            addCriterion("usersTrueName >=", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameLessThan(String value) {
            addCriterion("usersTrueName <", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameLessThanOrEqualTo(String value) {
            addCriterion("usersTrueName <=", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameLike(String value) {
            addCriterion("usersTrueName like", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameNotLike(String value) {
            addCriterion("usersTrueName not like", value, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameIn(List<String> values) {
            addCriterion("usersTrueName in", values, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameNotIn(List<String> values) {
            addCriterion("usersTrueName not in", values, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameBetween(String value1, String value2) {
            addCriterion("usersTrueName between", value1, value2, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUserstruenameNotBetween(String value1, String value2) {
            addCriterion("usersTrueName not between", value1, value2, "userstruename");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssIsNull() {
            addCriterion("usersAddrss is null");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssIsNotNull() {
            addCriterion("usersAddrss is not null");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssEqualTo(String value) {
            addCriterion("usersAddrss =", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssNotEqualTo(String value) {
            addCriterion("usersAddrss <>", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssGreaterThan(String value) {
            addCriterion("usersAddrss >", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssGreaterThanOrEqualTo(String value) {
            addCriterion("usersAddrss >=", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssLessThan(String value) {
            addCriterion("usersAddrss <", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssLessThanOrEqualTo(String value) {
            addCriterion("usersAddrss <=", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssLike(String value) {
            addCriterion("usersAddrss like", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssNotLike(String value) {
            addCriterion("usersAddrss not like", value, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssIn(List<String> values) {
            addCriterion("usersAddrss in", values, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssNotIn(List<String> values) {
            addCriterion("usersAddrss not in", values, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssBetween(String value1, String value2) {
            addCriterion("usersAddrss between", value1, value2, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersaddrssNotBetween(String value1, String value2) {
            addCriterion("usersAddrss not between", value1, value2, "usersaddrss");
            return (Criteria) this;
        }

        public Criteria andUsersphoneIsNull() {
            addCriterion("usersPhone is null");
            return (Criteria) this;
        }

        public Criteria andUsersphoneIsNotNull() {
            addCriterion("usersPhone is not null");
            return (Criteria) this;
        }

        public Criteria andUsersphoneEqualTo(String value) {
            addCriterion("usersPhone =", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneNotEqualTo(String value) {
            addCriterion("usersPhone <>", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneGreaterThan(String value) {
            addCriterion("usersPhone >", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneGreaterThanOrEqualTo(String value) {
            addCriterion("usersPhone >=", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneLessThan(String value) {
            addCriterion("usersPhone <", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneLessThanOrEqualTo(String value) {
            addCriterion("usersPhone <=", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneLike(String value) {
            addCriterion("usersPhone like", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneNotLike(String value) {
            addCriterion("usersPhone not like", value, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneIn(List<String> values) {
            addCriterion("usersPhone in", values, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneNotIn(List<String> values) {
            addCriterion("usersPhone not in", values, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneBetween(String value1, String value2) {
            addCriterion("usersPhone between", value1, value2, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersphoneNotBetween(String value1, String value2) {
            addCriterion("usersPhone not between", value1, value2, "usersphone");
            return (Criteria) this;
        }

        public Criteria andUsersemailIsNull() {
            addCriterion("usersEmail is null");
            return (Criteria) this;
        }

        public Criteria andUsersemailIsNotNull() {
            addCriterion("usersEmail is not null");
            return (Criteria) this;
        }

        public Criteria andUsersemailEqualTo(String value) {
            addCriterion("usersEmail =", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailNotEqualTo(String value) {
            addCriterion("usersEmail <>", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailGreaterThan(String value) {
            addCriterion("usersEmail >", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailGreaterThanOrEqualTo(String value) {
            addCriterion("usersEmail >=", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailLessThan(String value) {
            addCriterion("usersEmail <", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailLessThanOrEqualTo(String value) {
            addCriterion("usersEmail <=", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailLike(String value) {
            addCriterion("usersEmail like", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailNotLike(String value) {
            addCriterion("usersEmail not like", value, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailIn(List<String> values) {
            addCriterion("usersEmail in", values, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailNotIn(List<String> values) {
            addCriterion("usersEmail not in", values, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailBetween(String value1, String value2) {
            addCriterion("usersEmail between", value1, value2, "usersemail");
            return (Criteria) this;
        }

        public Criteria andUsersemailNotBetween(String value1, String value2) {
            addCriterion("usersEmail not between", value1, value2, "usersemail");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}