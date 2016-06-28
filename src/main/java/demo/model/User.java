package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by sys on 2016/6/27.
 *
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class User extends BaseModel {
    private Integer id;
    private String username;
    private String password;
    private String tel;
    private String address;
    private String role;
}
