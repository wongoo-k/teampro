package Member;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

// Model 역할 (DB관련 작업)
public class MemberDAO {
   // 필드 선언 : JDBC6단계에서 사용할 필드 
   private Statement stmt;
   private PreparedStatement pStmt;
   private Connection con;
   private DataSource dataFactory;
   
   // java의 기본 class 
   // java.
   // javax.
   
   public MemberDAO() {
      try { 
         Context ctx = new InitialContext();
         Context envContext = (Context) ctx.lookup("java:/comp/env");
         dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
      } catch (Exception e) { 
         e.printStackTrace();
      }
   }

   // 메소드 선언 (기능) -- 사용자 전체목록 조회하기 
   public List<MemberVO> listMembers() {
      List<MemberVO> list = new ArrayList<MemberVO>();
      
      try { 
         // 1)2)3) 드라이버로딩,DB접속,쿼리 준비
         //connDB();
         con = dataFactory.getConnection();
         
         // 4)쿼리 실행
         String query = "select * from t_member";
         System.out.println("query = " + query);
         pStmt = con.prepareStatement(query);
         ResultSet rs = pStmt.executeQuery(query); // DB는 Row단위처리 Row에는 Col이 포함되어 있고, Col=VO 필드명

         // 5)결과얻기
         while(rs.next()) { 
            // db에 select해서 1개의 Row를 가져와서 java 변수에 저장..
            String id = rs.getString("id"); // 컬럼명인데, 대소문자 구별 안하다.
            String pwd = rs.getString("pwd");
            String name = rs.getString("name");
            String email = rs.getString("email");
            Date joinDate = rs.getDate("joindate");
            
            // Array에 하나씩 쌓아서 나중에 한번에 리턴
            // Array에 하나씩 쌓기 위해서 getter/setter를 이용하여 class넣는다.
            MemberVO vo = new MemberVO();
            vo.setId(id);
            vo.setPwd(pwd);
            vo.setName(name);
            vo.setEmail(email);
            vo.setJoinDate(joinDate);

            // 위에 만든 class를 list (ArrayList)에 하나씩 순차적으로 넣는다.
            list.add(vo);
         }
         
         // 6)DB접속 해제 
         rs.close();
         pStmt.close();
         con.close();
         
      } catch (Exception e) { 
         e.printStackTrace();
      }
      // List<MemberVO> 형태를 return 해야함..
      return list;
   }

   private void connDB() {
      // TODO Auto-generated method stub
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521:XE";
      String user = "STUDY";
      String pwd = "STUDY";
      try { 
         Class.forName(driver);
         System.out.println("Oracle 드라이버 로딩 성공");
         con = DriverManager.getConnection(url,user,pwd);
         System.out.println("Connection 생성 성공");
         stmt = con.createStatement();
         System.out.println("Statement 생성 성공");
         
      } catch(Exception e) { 
         e.printStackTrace();
      }
   }
   
   // 메소드 선언 (기능) -- 회원가입
   public int joinMember(MemberVO vo) {
      // vo에는 사용자가 입력한 정보가 들어있음.
      // JDBC 6단계 
      int ret = 0;
      try { 
         // 1)2)3) 드라이버로딩,DB접속,쿼리 준비
         connDB();

         // 4)쿼리 실행
         //INSERT INTO T_MEMBER (ID, PWD, NAME, EMAIL, JOINDATE)  
         //VALUES('', '', '', '', '');
         
         //String query = "INSERT INTO T_MEMBER (ID, PWD, NAME, EMAIL, JOINDATE) " +
         //               " VALUES('"+vo.getId() + "', '"+ vo.getPwd()   +"', '"+ vo.getName()  +
         //               "', '"+ vo.getEmail()  +"', sysdate)";
         String query = "INSERT INTO T_MEMBER (ID, PWD, NAME, EMAIL, JOINDATE) VALUES(?, ?, ?, ?, sysdate)";
         pStmt = con.prepareStatement(query);
         pStmt.setString(1, vo.getId());
         pStmt.setString(2, vo.getPwd());
         pStmt.setString(3, vo.getName());
         pStmt.setString(4, vo.getEmail());

         System.out.println("query = " + query);
         
         ret = pStmt.executeUpdate();
         
         System.out.println("DB Insert 결과 = " + ret);
         //ResultSet rs = stmt.executeQuery(query); // DB는 Row단위처리 Row에는 Col이 포함되어 있고, Col=VO 필드명
         // 5)결과얻기
         
         
      } catch (Exception e) { 
         e.printStackTrace();
         
      } finally { 
         // 여기는 정상이든/비정상이든 무조건 수행.

         // 6)DB접속 해제 
         //rs.close();
         try { 
            pStmt.close();
            con.close();
         } catch (Exception e) { 
            
         }
      }
      return ret;
      
   }
   
   public MemberVO selectMember(String id) { 
      // select 쿼리를 통해서 1명정보만 읽어내고.
      // id,이름,email,pwd,joindate
      // 그걸 리턴함. 1Row , 멀티 Col 
      MemberVO vo = new MemberVO();
      
      try { 
         // 1)2)3) 드라이버로딩,DB접속,쿼리 준비
         connDB();

         // 4)쿼리 실행
         // SELECT

         String query = "SELECT ID, PWD, NAME, EMAIL, JOINDATE FROM T_MEMBER where id=?";
         pStmt = con.prepareStatement(query);
         pStmt.setString(1, id);
         System.out.println("id = [" +id +"]");

         System.out.println("query = " + query);
         ResultSet rs = pStmt.executeQuery();

         // 5)결과얻기
         while(rs.next()) { // 1개나온게 맞는데.. 왜 next()? 0개 나올수도 있음. 
            vo.setId(rs.getString("id"));
            vo.setPwd(rs.getString("pwd"));
            vo.setName(rs.getString("name"));
            vo.setEmail(rs.getString("email"));
            vo.setJoinDate(rs.getDate("joindate"));
         }
         
         System.out.println("DB Select 결과 = " + vo.toString());
         rs.close();
         
      } catch (Exception e) { 
         e.printStackTrace();
         
      } finally { 
         // 여기는 정상이든/비정상이든 무조건 수행.

         // 6)DB접속 해제 
         //rs.close();
         try { 
            pStmt.close();
            con.close();
         } catch (Exception e) { 
            
         }
      }      
      return vo;
   }

   public int updateMember(MemberVO vo) {
      // TODO Auto-generated method stub
      // vo에는 사용자가 입력한 정보가 들어있음.
      // JDBC 6단계 
      int ret = 0;
      try { 
         // 1)2)3) 드라이버로딩,DB접속,쿼리 준비
         connDB();
         System.out.println("수정할 정보 = " + vo.toString());

         // 4)쿼리 실행
         // UPDATE T_MEMBER SET PWD='', NAME='', EMAIL='', JOINDATE='' WHERE ID='';
         
         String query = "UPDATE T_MEMBER SET PWD=?, NAME=?, EMAIL=? WHERE ID=?";
         pStmt = con.prepareStatement(query);
         pStmt.setString(1, vo.getPwd());
         pStmt.setString(2, vo.getName());
         pStmt.setString(3, vo.getEmail());
         pStmt.setString(4, vo.getId());

         System.out.println("query = " + query);
         
         ret = pStmt.executeUpdate();
         
         System.out.println("DB Update 결과 = " + ret);
         //ResultSet rs = stmt.executeQuery(query); // DB는 Row단위처리 Row에는 Col이 포함되어 있고, Col=VO 필드명
         // 5)결과얻기
         
         
      } catch (Exception e) { 
         e.printStackTrace();
         
      } finally { 
         // 여기는 정상이든/비정상이든 무조건 수행.

         // 6)DB접속 해제 
         //rs.close();
         try { 
            pStmt.close();
            con.close();
         } catch (Exception e) { 
            
         }
      }
      return ret;
   }

   public int deleteMember(String id) {
      // TODO Auto-generated method stub
      // vo에는 사용자가 입력한 정보가 들어있음.
      // JDBC 6단계 
      int ret = 0;
      try { 
         // 1)2)3) 드라이버로딩,DB접속,쿼리 준비
         connDB();
         System.out.println("삭제할 정보 = " + id);

         // 4)쿼리 실행
         // DELETE FROM T_MEMBER WHERE ID='';
         
         String query = "DELETE FROM T_MEMBER WHERE ID=?";
         pStmt = con.prepareStatement(query);
         pStmt.setString(1, id);

         System.out.println("query = " + query);
         
         ret = pStmt.executeUpdate();
         
         System.out.println("DB Delete 결과 = " + ret);
         //ResultSet rs = stmt.executeQuery(query); // DB는 Row단위처리 Row에는 Col이 포함되어 있고, Col=VO 필드명
         // 5)결과얻기
         
         
      } catch (Exception e) { 
         e.printStackTrace();
         
      } finally { 
         // 여기는 정상이든/비정상이든 무조건 수행.

         // 6)DB접속 해제 
         //rs.close();
         try { 
            pStmt.close();
            con.close();
         } catch (Exception e) { 
            
         }
      }
      return ret;
   }
   
   // 회원 로그인 처리를 위한 메소드 생성
   public boolean isExisted(MemberVO vo) { 
      boolean result = false;
      
      try { 
         // 1)2)3) 드라이버로딩,DB접속,쿼리 준비
         connDB();

         // 4)쿼리 실행
         // SELECT

         String query = "SELECT decode(count(*),1,'true','false') as result FROM T_MEMBER where id=? and pwd=?";
         pStmt = con.prepareStatement(query);
         pStmt.setString(1, vo.getId());
         pStmt.setString(2, vo.getPwd());

         System.out.println("query = " + query);
         ResultSet rs = pStmt.executeQuery();
         // 5)결과얻기
         rs.next(); // 첫번째 결과로 이동..

         result = Boolean.parseBoolean(rs.getString("result"));
         System.out.println("DB 로그인 결과 = " + result);
         rs.close();
         
      } catch (Exception e) { 
         e.printStackTrace();
         
      } finally { 
         // 여기는 정상이든/비정상이든 무조건 수행.

         // 6)DB접속 해제 
         //rs.close();
         try { 
            pStmt.close();
            con.close();
         } catch (Exception e) { 
            
         }
      }      
      return result;
   }
}