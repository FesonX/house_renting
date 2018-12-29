package cn.util;

import java.util.ArrayList;
import java.util.List;

public class Paging {
	List<?> list;
    int pageCount;

    public Paging() {

    }

    /**
     * initial
     * 
     * @param list
     *            data list
     * @param pageCount
     *            item number per page
     */
    public Paging(List<?> list, int pageCount) {
        this.list = list;
        this.pageCount = pageCount;
    }

    /**
     * list of current page
     * 
     * @param nowPage
     *            
     * @return list of current page
     */
    public List<Object> getPaging(int nowPage) {
        int count = list.size();
        List<Object> list = new ArrayList<Object>();
        for (int i = 0; i < count; i += pageCount) {
            List<Object> temp = new ArrayList<Object>();
            if ((count - i) >= pageCount) {
                for (int j = 0; j < pageCount; j++) {
                    temp.add(this.list.get(i + j));
                }
            } else {
                for (int j = 0; j < count - i; j++) {
                    temp.add(this.list.get(i + j));
                }
            }
            list.add(temp);
        }
        return (List<Object>) list.get(nowPage);
    }

    public int getPageNum() {
        int count = list.size();
        int pageNum = count / pageCount;
        if (count % pageCount != 0) {
            pageNum += 1;
        }
        return pageNum;
    }
}
/** Example for Paging*/
/*public class Mian {
    public static void main(String[] args) {
        List<String> list = new ArrayList<String>();
        list.add("1");
        list.add("2");
        list.add("3");
        list.add("4");
        list.add("5");
        list.add("6");
        list.add("7");
        list.add("8");
        list.add("9");
        list.add("10");
        Paging page = new Paging(list,4);
        System.out.println(page.getPaging(1));
    }
}//return [5, 6, 7, 8]
*/

