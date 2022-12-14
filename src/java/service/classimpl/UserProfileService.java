/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.classimpl;

import dal.UserProfileDAO;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import model.UserProfile;
import service.IRateService;
import service.IUserProfileService;

/**
 *
 * @author Lenovo
 */
public class UserProfileService implements IUserProfileService {

    UserProfileDAO userProfileDAO = new UserProfileDAO();

    @Override
    public UserProfile getUserProfileById(int id, List<UserProfile> list) {
        for (UserProfile u : list) {
            if (u.getID() == id) {
                return u;
            }
        }
        return null;
    }

    @Override
    public String insert(UserProfile u, List<UserProfile> list) {
        userProfileDAO.insert(u);
        list.add(u);
        return "Insert sucessful!";
    }

    @Override
    public String update(UserProfile u, List<UserProfile> list) {
        userProfileDAO.update(u);
        UserProfile uS = getUserProfileById(u.getID(), list);
        uS.setFirstName(u.getFirstName());
        uS.setLastName(u.getLastName());
        uS.setAvatar(u.getAvatar());
        uS.setEmail(u.getEmail());
        uS.setDob(u.getDob());
        uS.setAddressID(u.getAddressID());
        uS.setGender(u.isGender());
        return "Update successful!";
    }

    @Override
    public String delete(UserProfile u, List<UserProfile> list) {
        userProfileDAO.delete(u.getID());
        list.remove(u);
        return "Delete successful!";

    }

    @Override
    public List<UserProfile> getList() {
        return userProfileDAO.getUsProList();
    }

    @Override
    public List<UserProfile> search(String name, List<UserProfile> upList) {
        name = name.toLowerCase().trim();
        List<UserProfile> uList = new ArrayList<>();
        for (UserProfile u : upList) {
            if(u.getFirstName().toLowerCase().contains(name) || u.getLastName().toLowerCase().contains(name))
            {
                uList.add(u);
            }
        }
        return uList;
    }

    @Override
    public List<UserProfile> sortName(List<UserProfile> uList) {
        for (int i = 0; i < uList.size() - 1; i++) {
                    for (int j = i + 1; j < uList.size(); j++) {
                        if (uList.get(i).getFirstName().compareTo(uList.get(j).getFirstName()) > 0) {
                            Collections.swap(uList, i, j);
                        }
                    }
                }
        return uList;
    }

    @Override
    public List<UserProfile> sortRate(List<UserProfile> uList) {
        IRateService iRate = new RateService();
         for (int i = 0; i < uList.size() - 1; i++) {
                    float rate1 = (float) iRate.getRateByMentorID(uList.get(i).getID());
                    for (int j = i + 1; j < uList.size(); j++) {
                        float rate2 = (float) iRate.getRateByMentorID(uList.get(j).getID());
                        if (rate1 < rate2) {
                            Collections.swap(uList, i, j);
                        }
                    }
                }
         return uList;
    }

    @Override
    public List<Integer> getMonthlyUser(int roleID, List<UserProfile> uList, HashMap<Integer, Integer> roleHm) {
        ArrayList<Integer> list = new ArrayList<>();
        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();
        int year = localDate.getYear();
        for (int i=1; i<=month; i++){
            list.add(getUserPerMonth(roleID, i, year, uList, roleHm));
        }
        return list;
    }
    

    private int getUserPerMonth(int roleID, int month, int year, List<UserProfile> uList, HashMap<Integer, Integer> roleHm) {
        int total = 0 ;
        for (UserProfile up : uList){
            if (roleHm.get(up.getID()) == roleID){
                String[] s = up.getCreateAt().split("-");
            int y = Integer.parseInt(s[0]);
            int m = Integer.parseInt(s[1]);
            if (y==year && m == month) total++;
            }
        }
        return total;
    }
    
    


 
}
