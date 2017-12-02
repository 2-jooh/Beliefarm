package kr.co.beliefarm.dao.handler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import kr.co.beliefarm.vo.ProjectStatement;
import kr.co.beliefarm.vo.RewardStatement;

public class RewardStatementTypeHandler extends BaseTypeHandler<RewardStatement>{

	@Override
	public RewardStatement getNullableResult(ResultSet rs, String columnName) throws SQLException {
		String code = rs.getString(columnName);
		return RewardStatement.findBy(code);
	}

	@Override
	public RewardStatement getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		String code = rs.getString(columnIndex);
		return RewardStatement.findBy(code);
	}

	@Override
	public RewardStatement getNullableResult(CallableStatement arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setNonNullParameter(PreparedStatement pstmt, int paramIndex, RewardStatement rewardStatement, JdbcType jdbcType)
			throws SQLException {
		
		pstmt.setString(paramIndex, rewardStatement.getCode());
	}
}
