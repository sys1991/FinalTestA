package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by Administrator on 2016/6/28.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Health extends BaseModel {
    private Integer id;
    private String title;
    private String summary;
    private String substance;
    private String subtime;
}
