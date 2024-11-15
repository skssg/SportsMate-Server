package com.kh.sportsmate.Attachment.model.dao;

import com.kh.sportsmate.Attachment.model.vo.Profile;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

/**
 * packageName    : com.kh.sportsmate.Attachment.model.dao
 * fileName       : AttachmentDao
 * author         : jun
 * date           : 2024. 11. 15.
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024. 11. 15.        jun       최초 생성
 */
@Repository
public class AttachmentDao {
    public int insertProfile(SqlSessionTemplate sqlSession, Profile profile){
        return sqlSession.insert("attachmentMapper.insertProfile", profile);
    }
}
