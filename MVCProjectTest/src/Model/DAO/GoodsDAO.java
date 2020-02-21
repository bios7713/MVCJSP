package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.GoodsDTO;

public class GoodsDAO extends DataBaseInfo {
	final String COLUMNS = " goods_Seq , goods_Num, user_Id, goods_Name, "
						                + " goods_Price, goods_Qty, goods_Content, goods_Image,"  
							            + " goods_Register, goods_Visit ";
	
	
	public Integer getGoodsCount() {
		Integer result = 0;
		getConnection();
		sql = "select count(*) from goods";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			rs.next();
			result =rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
			
		}

		return result;
	}
	
	public void visitCountUpdate(Integer goodsSeq) {
		getConnection();
		
		sql = "update goods set goods_visit  =  goods_visit +1  "
				+ " where goods_seq = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, goodsSeq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}

	}

	
	public GoodsDTO getOneSelect(Integer goodsSeq) {
		getConnection();
		GoodsDTO goods = new GoodsDTO();
		sql = " select " + COLUMNS + " from goods where goods_seq = ? ";
					
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, goodsSeq);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				 
				goods.setGoodsSeq(rs.getInt("goods_seq"));
				goods.setGoodsNum(rs.getString("goods_num"));
				goods.setUserId(rs.getString("user_id"));
				goods.setGoodsName(rs.getString("goods_name"));
				goods.setGoodsPrice(rs.getInt("goods_price"));
				goods.setGoodsQty(rs.getInt("goods_qty"));
				goods.setGoodsContent(rs.getString("goods_content"));
				goods.setGoodsImage(rs.getString("goods_image"));
				goods.setGoodsRegister(rs.getTimestamp("goods_register"));
				goods.setGoodsVisit(rs.getInt("goods_visit"));
					
			}		
		} catch (SQLException e) {	
			e.printStackTrace();
		}finally {
			close();			
		}
		return goods;
	}
	
	
	
	
	
	public void goodsContentUpdate(GoodsDTO goods) {
		getConnection();	
		sql = " update goods set "
			 + " goods_price = ? , goods_qty = ? "
			 + " goods_content = ? , user_id = ? "
			 + "  where goods_seq = ?  ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, goods.getGoodsPrice());
			pstmt.setInt(2, goods.getGoodsQty());
			pstmt.setString(3, goods.getGoodsContent());
			pstmt.setString(4, goods.getUserId());
			pstmt.setInt(5, goods.getGoodsSeq());
			
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		
		}finally {
			close();
			
		}
		
		
		
		
	}
	public void goodsDelete(String Num) {
		getConnection();
		sql = "delete from goods where goods_seq= ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, Num);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close();
		}
		
		
		
		
		
	}
	
	public void  goodsFileUpdate(GoodsDTO goods) {
		getConnection();
		sql =  "update goods set goods_price = ? , goods_qty = ?  ,"
				+" goods_content = ? , user_id = ? , goods_Image = ? "
				+" where goods_seq =? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, goods.getGoodsPrice());
			pstmt.setInt(2, goods.getGoodsQty());
			pstmt.setString(3, goods.getGoodsContent());
			pstmt.setString(4, goods.getUserId());
			pstmt.setString(5, goods.getGoodsImage());
			pstmt.setInt(6, goods.getGoodsSeq());
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			
			close();
		}
		
		
		
	}
	
	
	
	
	public List getGoodsAllSelect(Integer page , Integer limit) {
		List list = new ArrayList();
		getConnection();
		int startRow = (page -1) * limit + 1;
		int endRow = startRow + limit - 1 ;
		
	
	            	
		sql = " select *"
			 + " from ( select rownum rn, " +  COLUMNS
			 + "         from (select " + COLUMNS
			 		         + "   from goods order by goods_seq DESC )) "
			 + "  where rn >= ? and rn <= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				GoodsDTO dto = new GoodsDTO();
			
			
				dto.setGoodsSeq(rs.getInt("goods_seq"));
				dto.setGoodsNum(rs.getString("goods_num"));
				dto.setUserId(rs.getString("user_id"));
				dto.setGoodsName(rs.getString("goods_name"));
				dto.setGoodsPrice(rs.getInt("goods_price"));
				dto.setGoodsQty(rs.getInt("goods_qty"));
				dto.setGoodsContent(rs.getString("goods_content"));
				dto.setGoodsImage(rs.getString("goods_image"));
				dto.setGoodsRegister(rs.getTimestamp("goods_register"));
				dto.setGoodsVisit(rs.getInt("goods_visit"));
				list.add(dto);
				
			}
	
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
			
		}
		
		
		
	
		return list;
	}
	public void insertGoods(GoodsDTO dto) {
		
		getConnection();
		
		sql = " insert into goods ( " + COLUMNS + " ) " 
		     + " VALUES ( num_seq.nextval, ?, ?, ?, ?, ?, ?, ?,sysdate,0 ) ";
		
		try {
					
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getGoodsNum());
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3, dto.getGoodsName());
			pstmt.setInt(4, dto.getGoodsPrice());
			pstmt.setInt(5, dto.getGoodsQty());
			pstmt.setString(6, dto.getGoodsContent());
			pstmt.setString(7, dto.getGoodsImage());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			
			close();
		}
		

	}
	

}
