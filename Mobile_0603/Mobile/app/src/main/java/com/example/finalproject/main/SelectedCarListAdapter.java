package com.example.finalproject.main;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.RecyclerView;

import com.example.finalproject.R;

import java.util.ArrayList;
import java.util.Collections;

public class SelectedCarListAdapter extends RecyclerView.Adapter<SelectedCarListAdapter.ViewHolder> implements CarItemTouchHelperCallback.OnItemMoveListener {
    Context mContext;
    int row_res_id;
    ArrayList<Carnum> carlist;

    private OnItemClickListener itemClickListener = null;

    public interface OnStartDragListener {
        void onStartDrag(ViewHolder holder);
    }

    private final OnStartDragListener startDragListener;

    public SelectedCarListAdapter(Context mContext, int row_res_id, ArrayList<Carnum> carlist, OnStartDragListener startDragListener) {
        this.mContext = mContext;
        this.row_res_id = row_res_id;
        this.carlist = carlist;
        this.startDragListener = startDragListener;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(mContext).inflate(row_res_id, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder, int position) {
        TextView carnum_view = holder.carnum_view;
        carnum_view.setText(carlist.get(position).getCarnum());

        Log.d("carnum setting", "carnum: " + carlist.get(position).getCarnum());

        holder.platetextview.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                v.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public boolean onTouch(View v, MotionEvent event) {
                        if (MotionEventCompat.getActionMasked(event) == MotionEvent.ACTION_DOWN) {
                            startDragListener.onStartDrag(holder);
                        }
                        return false;
                    }
                });
                return false;
            }
        });
        /*holder.platetextview.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (MotionEventCompat.getActionMasked(event) == MotionEvent.ACTION_DOWN) {
                    startDragListener.onStartDrag(holder);
                }
                return false;
            }
        });*/
    }

    @Override
    public int getItemCount() {
        Log.d("carlist size", "selected size:" + carlist.size());
        return carlist.size();
    }

    @Override
    public boolean onItemMove(int fromPosition, int toPosition) {
        Collections.swap(carlist, fromPosition, toPosition);
        notifyItemMoved(fromPosition, toPosition);

        return true;
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView carnum_view;
        ImageButton cancel_btn;
        ImageView platetextview;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            carnum_view = itemView.findViewById(R.id.carnum_text);
            cancel_btn = itemView.findViewById(R.id.cancel_btn);
            platetextview = itemView.findViewById(R.id.platetextview);

            cancel_btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {


                    int position = getAdapterPosition();
                    //또 다른 자동차 연결 클릭
                    carlist.remove(position);

                    if (itemClickListener != null) {
                        itemClickListener.onItemClick(v, position);
                    }

                    notifyDataSetChanged();
                }
            });

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {

                }
            });
        }

    }

    public interface OnItemClickListener {
        void onItemClick(View v, int position);
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.itemClickListener = listener;
    }
}

