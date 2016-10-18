package org.semierp.vo;

public class yearplanInfo {
   int yid;
   int pno;
   int sellnum;
   int sump;
   String month;
   
   public int getyid() {
      return yid;
   }
   public void setyid(int yid) {
      this.yid = yid;
   }
   public int getpno() {
      return pno;
   }
   public void setpno(int pno) {
      this.pno = pno;
   }
   public int getsellnum() {
      return sellnum;
   }
   public void setsellnum(int sellnum) {
      this.sellnum = sellnum;
   }
   public int getsump() {
      return sump;
   }
   public void setsump(int sump) {
      this.sump = sump;
   }
   public String getmonth() {
      return month;
   }
   public void setmonth(String month) {
      this.month = month;
   }
}