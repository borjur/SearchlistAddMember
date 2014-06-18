package springjsf.model.dao;

import springjsf.model.MemberTO;

import java.util.List;


public interface MemberDAO {
    public void addMember(MemberTO memberTO);

    public MemberTO getMemberByName(String userName);

    public List<MemberTO> getAllMembers();
}
