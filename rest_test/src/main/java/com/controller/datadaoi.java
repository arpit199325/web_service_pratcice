package com.controller;

import java.util.List;

import com.model.model;

public interface datadaoi {
	
	public model add_model(model m);
	public model update_model(int id,model m);
	public String delete_model(model m);
	public model one_data(int id);
	public List<model> list_data(String state);
	public List<model> all_data();
	
}