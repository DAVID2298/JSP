package it.contrader.dao;

import it.contrader.model.MedicalExamination;
import it.contrader.model.User;
import it.contrader.utils.ConnectionSingleton;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MedicalExaminationDAO implements DAO<MedicalExamination>{

    private final String QUERY_ALL = "SELECT * FROM visita";
    private final String QUERY_CREATE = "INSERT INTO visita (tipologia, costo, codice, img) VALUES (?,?,?,?)";
    private final String QUERY_READ = "SELECT * FROM visita WHERE id_visita=?";
    private final String QUERY_UPDATE = "UPDATE visita SET tipologia=?, costo=?, codice=?, img=? WHERE id_visita=?";
    private final String QUERY_DELETE = "DELETE FROM visita WHERE id_visita=?";
    private final String QUERY_IDME="select visita.Id_Visita from visita join prenotazione on prenotazione.id_user=? where prenotazione.Id_Visita=visita.Id_Visita;";
    private final String QUERY_COUNT="select count(*) from visita WHERE tipologia=?";
    private final String QUERY_SEARCH="Select * from visita where id_visita=?";
    public MedicalExaminationDAO(){

    }
    @Override
    public List<MedicalExamination> getAll() {
        List<MedicalExamination> medicalExaminationList = new ArrayList<>();
        Connection connection = ConnectionSingleton.getInstance();

        try {

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(QUERY_ALL);
            MedicalExamination medicalExamination;
            while (resultSet.next()){

                int id = resultSet.getInt("id_visita");
                String typology = resultSet.getString("tipologia");
                double cost = resultSet.getDouble("costo");
                long code = resultSet.getLong("codice");
                String img = resultSet.getString("img");
                medicalExamination = new MedicalExamination(typology, cost, code, img);
                medicalExamination.setId(id);
                medicalExaminationList.add(medicalExamination);

            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return medicalExaminationList;
    }

    @Override
    public MedicalExamination read(int userId) {
        Connection connection = ConnectionSingleton.getInstance();
        try {


            PreparedStatement preparedStatement = connection.prepareStatement(QUERY_READ);
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            String typology, img;
            double cost;
            long code;

            typology = resultSet.getString("tipologia");
            cost = Double.parseDouble(resultSet.getString("costo"));
            code = Long.parseLong(resultSet.getString("codice"));
            img = resultSet.getString("img");
            MedicalExamination medicalExamination = new MedicalExamination(typology, cost, code, img);
            medicalExamination.setId(resultSet.getInt("id_visita"));

            return medicalExamination;
        } catch (SQLException e) {
            return null;
        }

    }



    @Override
    public boolean insert(MedicalExamination medicalExaminationToInsert) {
        Connection connection = ConnectionSingleton.getInstance();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(QUERY_CREATE);
            preparedStatement.setString(1, medicalExaminationToInsert.getTypology());
            preparedStatement.setDouble(2, medicalExaminationToInsert.getCost());
            preparedStatement.setLong(3, medicalExaminationToInsert.getCode());
            preparedStatement.setString(4, medicalExaminationToInsert.getImg());
            preparedStatement.execute();
            return true;
        }catch (SQLException e){
            return false;
        }
    }

    @Override
    public boolean update(MedicalExamination medicalExaminationToUpdate) {
        Connection connection = ConnectionSingleton.getInstance();

        if (medicalExaminationToUpdate.getId() == 0)
            return false;

        MedicalExamination medicalExaminationread = read( medicalExaminationToUpdate.getId());
        if (!medicalExaminationread.equals(medicalExaminationToUpdate)) {
            try {

                if (medicalExaminationToUpdate.getTypology() == null || medicalExaminationToUpdate.getTypology().equals("")) {
                    medicalExaminationToUpdate.setTypology(medicalExaminationread.getTypology());
                }

                if (medicalExaminationToUpdate.getCost() == 0) {
                    medicalExaminationToUpdate.setCost(medicalExaminationread.getCost());
                }

                if (medicalExaminationToUpdate.getCode() == 0) {
                    medicalExaminationToUpdate.setCode(medicalExaminationread.getCode());
                }

                if (medicalExaminationToUpdate.getImg() == null || medicalExaminationToUpdate.getImg().equals("")) {
                    medicalExaminationToUpdate.setImg(medicalExaminationread.getImg());
                }

                PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(QUERY_UPDATE);
                preparedStatement.setString(1, medicalExaminationToUpdate.getTypology());
                preparedStatement.setDouble(2, medicalExaminationToUpdate.getCost());
                preparedStatement.setLong(3, medicalExaminationToUpdate.getCode());
                preparedStatement.setString(4, medicalExaminationToUpdate.getImg());
                preparedStatement.setInt(5, medicalExaminationToUpdate.getId());
                int a = preparedStatement.executeUpdate();
                if (a > 0)
                    return true;
                else
                    return false;

            } catch (SQLException e) {
                return false;
            }
        }

        return false;
    }

    @Override
    public boolean delete(int id) {
        Connection connection = ConnectionSingleton.getInstance();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(QUERY_DELETE);
            preparedStatement.setLong(1, id);
            int n = preparedStatement.executeUpdate();
            if (n != 0)
                return true;

        } catch (SQLException e) {
        }
        return false;
    }
}
