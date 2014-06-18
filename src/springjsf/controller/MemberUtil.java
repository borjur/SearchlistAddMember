package springjsf.controller;

import springjsf.model.MemberTO;


public class MemberUtil {

    public static MemberTO createMemberInstance(MemberBean memberBean) {
        MemberTO memberTO = new MemberTO(memberBean.getUsername());
        memberTO.setId(memberBean.getId());
        memberTO.setActive(memberBean.isActive());
        memberTO.setCity(memberBean.getCity());
        memberTO.setCountry(memberBean.getCountry());
        memberTO.setEmail(memberBean.getEmail());
        memberTO.setMemberSinceDate(memberBean.getMemberSinceDate());
        memberTO.setRegion(memberBean.getRegion());
        memberTO.setStreet(memberBean.getStreet());
        memberTO.setUsername(memberBean.getUsername());
        memberTO.setZipCode(memberBean.getZipCode());
        return memberTO;
    }

    public static void populateMemberBeanInstance(MemberTO memberTO, MemberBean memberBean) {
        if (memberTO == null) {
            memberBean.setId(null);
            memberBean.setActive(false);
            memberBean.setCity(null);
            memberBean.setCountry(null);
            memberBean.setEmail(null);
            memberBean.setMemberSinceDate(null);
            memberBean.setRegion(null);
            memberBean.setStreet(null);
            memberBean.setZipCode(null);
            return;
        }
        memberBean.setId(memberTO.getId());
        memberBean.setUsername(memberTO.getUsername());
        memberBean.setActive(memberTO.isActive());
        memberBean.setCity(memberTO.getCity());
        memberBean.setCountry(memberTO.getCountry());
        memberBean.setEmail(memberTO.getEmail());
        memberBean.setMemberSinceDate(memberTO.getMemberSinceDate());
        memberBean.setRegion(memberTO.getRegion());
        memberBean.setStreet(memberTO.getStreet());
        memberBean.setUsername(memberTO.getUsername());
        memberBean.setZipCode(memberTO.getZipCode());
    }
}
