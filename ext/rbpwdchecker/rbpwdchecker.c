#include <ruby.h>
#include <crack.h>

VALUE check(VALUE class, VALUE pwd) {
  VALUE rb_response;
  char * c_response_ccall;
  char * c_response_local;
  char * c_password;
  int response_length;
    
  c_password = STR2CSTR(pwd);
  if(c_response_ccall = (char *)FascistCheck(c_password, NULL)) {
    if(response_length = strlen(c_response_ccall)) {
      c_response_local = malloc(response_length+1);
      strcpy(c_response_local, c_response_ccall);
      rb_response = rb_str_new2(c_response_local);
      free(c_response_local);
    } else {
      rb_response = rb_str_new2("");
    }
  } else {
    rb_response = rb_str_new2("");
  }
  return rb_response;
}

VALUE cPasswordChecker;

void
Init_rbpwdchecker()
{
  cPasswordChecker = rb_define_class("PasswordChecker", rb_cObject);
  rb_define_singleton_method(cPasswordChecker, "check", check, 1);
}
