package com.example.demo.utils;

public class Validation {

    public boolean isInputValid(String firstname, String lastname) {
        boolean flag=false;
        if(firstname.matches("\\p{Alpha}*") && lastname.matches("\\p{Alpha}*")){
            flag=true;
        }
        return flag;
}
}
