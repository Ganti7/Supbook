package com.zenika.supbook.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zenika.supbook.model.Message;

public class MessageService {

	public Message create(Message message) {
		// TODO Auto-generated constructor stub
	Connection cx = ConnexionManager.getCurrentConnection();
	PreparedStatement ps = null;
	try {

		ps = cx.prepareStatement("INSERT INTO MESSAGE( MESSAGE, ID_USER_SENT, ID_USER_RECEIVE) VALUES (?, ?, ?)");
		ps.setLong(1, message.getOwner());
		ps.setString(2, message.getPublishDate());
		ps.setString(3, message.getContent());
		ps.setLong(4, message.getSender());
		ps.executeUpdate();
		ResultSet generatedKeys = ps.getGeneratedKeys();
		generatedKeys.first();
		long generatedId = generatedKeys.getLong(1);

		cx.commit();

		message.setId(generatedId);
		return message;

	} catch (Exception e) {
		throw new RuntimeException(e);

	} finally {
		ConnexionManager.closeProperly(ps, cx);
	}
	}

	public List<Message> findUserMessage(long id) {
		List<Message> result = new ArrayList<Message>();

		Connection cx = ConnexionManager.getCurrentConnection();

		PreparedStatement ps = null;
		try {
			ps = cx.prepareStatement("SELECT * FROM MESSAGE WHERE ID_USER_RECEIVE = 1");
			
			//ps.setLong(1, id);
			
			ps.execute();
			ResultSet rs = ps.getResultSet();
			while (rs.next()) {
				result.add(buildFromResultSet(rs));
			}

			return result;

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			ConnexionManager.closeProperly(ps, cx);
		}
	}

	private Message buildFromResultSet(ResultSet rs) throws SQLException {
		Message result = new Message();
		result.setId(rs.getLong("ID"));
		result.setContent(rs.getString("MESSAGE"));
		result.setSender(rs.getLong("ID_USER_SENT"));
		result.setOwner(rs.getLong("ID_USER_RECEIVE"));
		result.setPublishDate(rs.getDate("DATE"));
		return result;
	}
}
