package com.sosks1313.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BCommand {

	void execute(HttpServletRequest request, HttpServletResponse response);
}
