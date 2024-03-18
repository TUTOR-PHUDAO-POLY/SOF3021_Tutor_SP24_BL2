package com.example.demo.B1_LamViecVoiForm.request;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class LoginRequest {

    @NotEmpty(message = "Username khong duoc de trong")
    @Pattern(regexp = "Hangnt169", message = "abc")
    private String username;

    @NotEmpty(message = "Password khong duoc de trong")
    @Pattern(regexp = "123456", message = "abc")
    private String password;

}
