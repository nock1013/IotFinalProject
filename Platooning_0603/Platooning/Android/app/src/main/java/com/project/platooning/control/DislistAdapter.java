package com.project.platooning.control;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.project.platooning.R;

import java.util.ArrayList;

public class DislistAdapter extends RecyclerView.Adapter<DislistAdapter.ViewHolder>
{
    Context context;
    int row_res_id;
    String[] data;

    public DislistAdapter(Context context, int row_res_id, String[] data) {
        this.context = context;
        this.row_res_id = row_res_id;
        this.data = data;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(row_res_id,null);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        String carnum = data[position];
        TextView carnum_dis = holder.carnum_dis;
        carnum_dis.setText(carnum);
    }


    @Override
    public int getItemCount() {
        return data.length;
    }
    class ViewHolder extends RecyclerView.ViewHolder{
        TextView carnum_dis;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            carnum_dis = itemView.findViewById(R.id.carnum_dis);
        }
    }
}
