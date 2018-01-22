package com.sam.springmvc.exceptionhandler;

public class OrderIdNotValidException extends RuntimeException {

    public OrderIdNotValidException (String message) {
        super(message);
    }
}