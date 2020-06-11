package com.gunzip.fcm;


public interface FCMService {
	int getToken(String token);

	FCMDTO getClientToken(String id);
	void sendMessage(String id, String TOKEN);
}
