package kr.co.beliefarm.dao.handler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import kr.co.beliefarm.vo.ProjectStatement;

public class ProjectStatementTypeHandler extends BaseTypeHandler<ProjectStatement>{

	@Override
	public ProjectStatement getNullableResult(ResultSet rs, String columnName) throws SQLException {
		String code = rs.getString(columnName);
		return ProjectStatement.findBy(code);
	}

	@Override
	public ProjectStatement getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		String code = rs.getString(columnIndex);
		return ProjectStatement.findBy(code);
	}

	@Override
	public ProjectStatement getNullableResult(CallableStatement arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setNonNullParameter(PreparedStatement pstmt, int paramIndex, ProjectStatement projectStatement, JdbcType jdbcType)
			throws SQLException {
		
		pstmt.setString(paramIndex, projectStatement.getCode());
	}

	
}
