package com.example.finalproject.main;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.example.finalproject.R;

import java.util.ArrayList;

public class CarList_Adapter extends RecyclerView.Adapter<CarList_Adapter.ViewHolder>{
    Context mContext;
    int row_res_id;
    ArrayList<Carnum> carlist;

    private OnItemClickListener itemClickListener = null;
    public CarList_Adapter(Context mContext, int row_res_id, ArrayList<Carnum> carlist){
        this.mContext = mContext;
        this.row_res_id = row_res_id;
        this.carlist = carlist;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(mContext).inflate(row_res_id,parent,false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        TextView carnum_link = holder.carnum_link;
        carnum_link.setText(carlist.get(position).getCarnum());

        if(carlist.get(position).isSelected()){ // 선택되었으면 카드색 어둡게
            holder.cardView.setCardBackgroundColor(Color.parseColor("#1f000000"));
        }else {
            holder.cardView.setCardBackgroundColor(Color.parseColor("#ffffffff"));
        }
    }

    @Override
    public int getItemCount() {
        return carlist.size();
    }

    class ViewHolder extends RecyclerView.ViewHolder{
        TextView carnum_link;
        CardView cardView;
        public ViewHolder(@NonNull final View itemView) {
            super(itemView);
            carnum_link = itemView.findViewById(R.id.carnum_item);

            cardView = itemView.findViewById(R.id.cardView);
            //2. 연결해야하는 기기가 여러 대 이므로 ArrayList에 연결하는 차량 번호 저장 -> DB의 차량상태 Update
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int position = getAdapterPosition();

                    //여기에 통신 관련 메소드 뿌리기
                    //통신이 완료되면 연결되었습니다 토스트 메세지
                    Toast.makeText(mContext,carnum_link.getText()+"와 연결이 완료되었습니다.",Toast.LENGTH_SHORT).show();
                    //또 다른 자동차 연결 클릭

                    if(itemClickListener!=null){
                        itemClickListener.onItemClick(v, position);
                    }
                }
            });

        }
    }

    public interface OnItemClickListener {
        void onItemClick(View v, int position);
    }

    public void setOnItemClickListener(OnItemClickListener listener){
        this.itemClickListener = listener;
    }

    public void checkSelected(View view){
        //if(view)
    }
}
