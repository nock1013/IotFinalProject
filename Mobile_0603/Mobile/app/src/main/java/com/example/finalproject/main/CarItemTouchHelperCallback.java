package com.example.finalproject.main;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;

public class CarItemTouchHelperCallback extends ItemTouchHelper.Callback{
    private final OnItemMoveListener moveListener;
    public CarItemTouchHelperCallback(OnItemMoveListener listener){
        moveListener = listener;
    }

    @Override
    public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
        int dragFlags = ItemTouchHelper.LEFT |ItemTouchHelper.RIGHT;

        return makeMovementFlags(dragFlags, 0);
    }

    @Override
    public boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder target) {
       moveListener.onItemMove(viewHolder.getAdapterPosition(), target.getAdapterPosition());

        return true;
    }

    @Override
    public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int direction) {

    }

    public interface OnItemMoveListener{
        boolean onItemMove(int fromPosition, int toPosition);
    }


}
