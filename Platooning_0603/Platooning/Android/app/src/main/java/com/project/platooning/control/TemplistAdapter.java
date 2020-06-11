package com.project.platooning.control;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.project.platooning.R;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class TemplistAdapter extends RecyclerView.Adapter<TemplistAdapter.ViewHolder>
{
    Context context;
    int row_res_id;
    String[] data;
    ArrayList<CarItem> filterdata = new ArrayList<CarItem>();
    HashMap<String,Integer> filtercar = new HashMap<String,Integer>();
    List<String> tempdata = new ArrayList<String>();
    public TemplistAdapter(Context context, int row_res_id, String[] data) {
        this.context = context;
        this.row_res_id = row_res_id;
        this.data = data;
        filterdata.add(new CarItem());
    }
    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(row_res_id,null);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder, final int position) {
        String item = data[position];
        holder.carnum_tem.setText(item);
       final int  c_position = position;
       holder.temnum.addTextChangedListener(new TextWatcher() {
           @Override
           public void beforeTextChanged(CharSequence s, int start, int count, int after) {

           }

           @Override
           public void onTextChanged(CharSequence s, int start, int before, int count) {

           }

           @Override
           public void afterTextChanged(Editable s) {
               Log.d("test", "afterTextChanged: "+s.toString());
               if(!s.toString().equals("")){
                   int temp = Integer.parseInt(s.toString());
               filtercar.put(holder.carnum_tem.getText().toString(),temp);
             }
           }
       });
        /*holder.temnum.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                int temp = Integer.parseInt(holder.temnum.getText().toString());
                filtercar.put(holder.carnum_tem.toString(),temp);
            }
        });*/

    }

    @Override
    public int getItemCount() {
        return data.length;
    }
    class ViewHolder extends RecyclerView.ViewHolder{
        TextView carnum_tem;
        EditText temnum;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            carnum_tem = itemView.findViewById(R.id.carnum_tem);
            temnum =(EditText)itemView.findViewById(R.id.temnum);
        }
    }
}
